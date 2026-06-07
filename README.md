# LED Badge — German Umlauts & English UI

A patch for the **LED Card** Android app
([com.yannis.ledcard](https://play.google.com/store/apps/details?id=com.yannis.ledcard))
that controls 44×11 pixel LED name badges over Bluetooth LE.

## What this fixes

The upstream app cannot send German umlauts to the badge — the BLE transfer
fails or renders garbage whenever a text contains `ä ö ü Ä Ö Ü ß`. This patch:

- Adds proper 8×11 pixel glyphs for all 7 German umlauts to the bundled
  `ASC11` font asset.
- Patches the text-encoding pipeline so umlaut codepoints are mapped to those
  new glyph slots before being sent over BLE.
- Translates the remaining Chinese UI strings (image-picker labels, permission
  toasts, a few button captions) to English.

The patched APK in this repo is `ledcard-patched.apk`.

## Install

The patched APK is signed with a self-generated debug key, so it cannot
overwrite the Play Store install — **you must uninstall the original first**.

### Option A: Directly on the phone (no PC needed)

1. On the phone, uninstall the existing **LED Card** / **LEDBadge** app
   (Settings → Apps → LED Card → Uninstall).
2. Open this page in the phone's browser and tap to download:
   **[ledcard-patched.apk](https://github.com/Jpsy/led_badge_android_app/raw/main/ledcard-patched.apk)**
3. Tap the downloaded file. Android will ask whether to allow your browser to
   install apps — grant it ("Install unknown apps" → your browser → Allow).
4. Tap **Install**. If Google Play Protect warns about an "unverified" app
   (it will — the APK is signed with a personal key, not Yannis's Play Store
   key), tap **More details → Install anyway**.

### Option B: From a computer with ADB

```sh
adb uninstall com.yannis.ledcard
adb install ledcard-patched.apk
```

If you get `INSTALL_PARSE_FAILED_NO_CERTIFICATES` or a signature error, make
sure the original is fully uninstalled (some OEMs keep a tombstone — check
under "Apps" in system settings).

## Build it yourself

### Requirements

- Linux (tested on Debian 13 arm64; x86_64 should work too)
- `default-jdk-headless` (OpenJDK 21 or newer)
- `apktool` (Debian package — only used to assemble smali into `classes.dex`)
- `zipalign` and `apksigner` (from the `apksigner` and `zipalign` Debian packages)
- `python3` (for the glyph patcher)
- [APKEditor](https://github.com/REAndroid/APKEditor) jar
  (download to `~/APKEditor.jar` — handles the resources.arsc repack that
  modern aapt2 chokes on for this particular APK)

```sh
sudo apt install -y default-jdk-headless apktool zipalign apksigner python3
wget -q -O ~/APKEditor.jar \
  https://github.com/REAndroid/APKEditor/releases/download/V1.4.5/APKEditor-1.4.5.jar
```

### Get the original APK

Pull it from a phone that has the Play Store version installed:

```sh
adb shell pm path com.yannis.ledcard            # prints /data/app/.../base.apk
adb pull /data/app/.../base.apk ledcard.apk
```

Reference SHA-256 (Play Store v3.5.1, versionCode 49):
`890c850bc7fcbf724aceae4dc9895d9777a5087e2cd1f576b0388cd94a92ed65`

### Build

```sh
# 1. Regenerate the patched font from the glyph source-of-truth
python3 patch_glyphs.py
cp extracted/assets/ASC11.patched smali/assets/ASC11

# 2. Assemble the patched smali into classes.dex
apktool b smali --aapt /usr/bin/aapt -o /dev/null   # produces smali/build/apk/classes.dex
                                                    # the aapt resource step fails — ignore it

# 3. Decode the original with APKEditor and swap in our patched bits
rm -rf decoded
java -jar ~/APKEditor.jar d -i ledcard.apk -o decoded -t xml -dex
cp smali/build/apk/classes.dex decoded/dex/classes.dex
cp smali/assets/ASC11           decoded/root/assets/ASC11

# 4. Apply the strings.xml translations from this repo into APKEditor's decoded tree
cp smali/res/values/strings.xml decoded/resources/package_1/res/values/strings.xml

# 5. Rebuild
java -jar ~/APKEditor.jar b -i decoded -o ledcard-patched-unsigned.apk

# 6. Generate a debug signing key (once)
keytool -genkey -v -keystore debug.keystore -alias debugkey -keyalg RSA -keysize 2048 \
        -validity 10000 -storepass android -keypass android \
        -dname "CN=Debug, OU=Local, O=Local, L=Local, S=Local, C=DE"

# 7. Align and sign
zipalign -p -f 4 ledcard-patched-unsigned.apk ledcard-patched-aligned.apk
apksigner sign --ks debug.keystore --ks-pass pass:android --key-pass pass:android \
               --out ledcard-patched.apk ledcard-patched-aligned.apk
apksigner verify -v ledcard-patched.apk
```

## Project layout

```
.
├── ledcard-patched.apk           # the final, ready-to-install patched APK
├── umlaut_glyphs.txt             # SOURCE OF TRUTH for the 7 umlaut glyph bitmaps
├── patch_glyphs.py               # reads umlaut_glyphs.txt, writes patched ASC11
└── smali/                        # apktool-decompiled tree of the original APK
    ├── assets/ASC11              # patched font (written by patch_glyphs.py)
    ├── res/values/strings.xml    # English translations of the ip_* labels
    └── smali/com/yannis/ledcard/
        ├── util/LedDataUtil.smali        # adds fixUmlauts(); 4 call-site patches
        └── activity/
            ├── MainActivity.smali        # permission-toast translations
            └── LedSettingsActivity.smali # button/toast translations
```

## How it works

### Why the upstream app fails on umlauts

The encoder in `LedDataUtil.getLibMsgBytes` and friends decides per-character
whether a glyph comes from the ASCII font (`ASC11`) or from a CJK font table
(`HZK11`/`JPK11`/`KRK11`/`TWK11`):

```java
char charAt = str.charAt(i);
if (charAt >= 128) {
    // CJK path: look up by 2-byte encoded value
    int[] code = getByteCodeCH(new String(cArr));        // encodes via GB2312 / shift-jis / etc.
    byte[] glyph = readCharacter(ctx, code[0], code[1], i);
} else {
    // ASCII path: look up by single byte
    byte b = new String(cArr).getBytes(ENCODE)[0];
    byte[] glyph = readASC(ctx, b, i);
}
```

For German/English/French locales, `ENCODE` defaults to `GB2312`. An umlaut
like `ü` (codepoint `0xFC`) takes the CJK branch, but GB2312 can't represent
it — so `getBytes("GB2312")` returns the single replacement byte `[0x3F]` and
`code[1]` crashes with `ArrayIndexOutOfBoundsException`. The actual user-visible
symptom on some flows is even more confusing: `LangUtils.isUserFontLib`
returns `false` for umlaut strings, routing them through a TTF rendering
fallback whose pixel measurement uses a different font than the actual draw —
so byte counts and glyph widths drift apart and the badge rejects the frame.

### The fix

A new helper `LedDataUtil.fixUmlauts(String)` is called at the four entry
points that read a message from `SendContent`. It maps the 7 umlaut codepoints
to control-character slots `0x01..0x07`:

| Char | Latin-1 | Mapped to | ASC11 slot |
|------|---------|-----------|------------|
| ä    | 0xE4    |     | 0x01       |
| ö    | 0xF6    |     | 0x02       |
| ü    | 0xFC    |     | 0x03       |
| Ä    | 0xC4    |     | 0x04       |
| Ö    | 0xD6    |     | 0x05       |
| Ü    | 0xDC    |     | 0x06       |
| ß    | 0xDF    |     | 0x07       |

After substitution every character in the string is `< 128`, so
`isUserFontLib` returns `true`, the encoder takes the ASCII branch, and
`readASC(ctx, slot, 11)` reads the correct glyph from the patched font. The
original message string in the UI is untouched — the substitution happens
only on the BLE-bytes path.

`ASC11` is a 256-entry table of 11-byte glyphs (8 pixels wide × 11 tall, MSB
on the left). Slots `0x01..0x07` were empty in the upstream font; we just
filled them in.

## Contributing

### Tweak a glyph

`umlaut_glyphs.txt` is the source of truth. Each glyph is 11 rows of 8
characters (`#` = pixel on, `.` = pixel off). Edit it, then:

```sh
python3 patch_glyphs.py
cp extracted/assets/ASC11.patched smali/assets/ASC11
# Then run steps 2-7 from "Build" above.
```

### Translate or fix a string

Two places:

- `smali/res/values/strings.xml` — string-resource labels (image picker,
  default-locale fallbacks). Edit directly.
- `smali/smali/com/yannis/ledcard/**/*.smali` — hardcoded strings (toasts,
  buttons). Search for the unicode escape (`grep -rn '\\u[4-9a-f][0-9a-f]\{3\}'
  smali/smali/`) and replace the whole quoted string in place. Keep ASCII —
  smali allows Unicode escapes but plain English is simpler to diff.

### Add a feature

You'll be editing smali. Recommended workflow:

1. Use `jadx-gui ledcard.apk` to browse decompiled Java (read-only, much easier
   to navigate than smali).
2. Find the method you want to change.
3. Locate the matching `.smali` file in `smali/smali/com/yannis/ledcard/`.
4. Make minimal edits — every register reference matters; never reorder
   `.locals` declarations or break the `move-result` chain.
5. Test by rebuilding and installing; if the app crashes, `adb logcat` will
   point at the bad smali line.

## Legal

This project is an unofficial modification of a third-party Android app. The
upstream app (`com.yannis.ledcard`) is © its original authors — only the
patches in this repository are the work of this project, distributed in good
faith for personal use with hardware the user already owns. If you are the
upstream author and would like changes here removed or upstreamed, please open
an issue.

The `ledcard-patched.apk` file in this repo is the original APK with the
patches in this repo applied. Don't redistribute the *unmodified* original —
get that from the Play Store.
