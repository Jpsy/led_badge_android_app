# LEDBadge+ — European characters, English UI, parallel install

A patch for the **LED Card** Android app
([com.yannis.ledcard](https://play.google.com/store/apps/details?id=com.yannis.ledcard))
that controls 44×11 pixel LED name badges over Bluetooth LE.

<p align="center">
  <img src="https://ae-pic-a1.aliexpress-media.com/kf/S587a60ab976a49eba77ac35f35d852d0y.png_960x960.png_.avif"
       alt="44×11 LED name badge" width="380">
</p>

The badge itself is a cheap, BLE-controlled LED matrix sold under many names —
e.g. on AliExpress as
"[LED Name Badge 44×11](https://aliexpress.com/item/1005008619076367.html)".
The vendor's official Android app is fine for ASCII, but a few quality-of-life
issues prompted this fork.

## What this fixes / changes

- **German umlauts work.** Upstream the BLE transfer fails or renders garbage
  whenever a text contains `ä ö ü Ä Ö Ü ß`. This patch ships proper 8×11 pixel
  glyphs for them and rewires the encoder.
- **More European characters.** Adds 24 further glyphs covering the common
  letters of French, Danish, and Polish:
  - French: `à é è ê ç î ô É Ç`
  - Danish: `æ ø å Æ Ø Å`
  - Polish: `ą ć ę ł ń ó ś ź ż`
- **English UI.** Translates the leftover Chinese strings in the image picker
  and the permission-related toasts/buttons.
- **Installs alongside the original.** The patched APK has a different
  application id (`io.github.jpsy.ledbadge`) and a different launcher label
  (`LEDBadge+`), so you can keep the upstream Play Store version installed in
  parallel and pick whichever one you want for a given session.

The patched APK in this repo is [`ledcard-patched.apk`](./ledcard-patched.apk).

## Install

Because the new application id differs from the upstream's, **you do not
need to uninstall** the original Play Store app. Both will live next to each
other in the launcher: `LEDBadge` is the upstream, `LEDBadge+` is this fork.

### Option A: Directly on the phone (no PC needed)

1. Open this page in the phone's browser and tap to download:
   **[ledcard-patched.apk](https://github.com/Jpsy/led_badge_android_app/raw/main/ledcard-patched.apk)**
2. Tap the downloaded file. Android will ask whether to allow your browser to
   install apps — grant it ("Install unknown apps" → your browser → Allow).
3. Tap **Install**. If Google Play Protect warns about an "unverified" app
   (it will — the APK is signed with a personal key, not Yannis's Play Store
   key), tap **More details → Install anyway**.

### Option B: From a computer with ADB

```sh
adb install ledcard-patched.apk
```

### Removing it later

`adb uninstall io.github.jpsy.ledbadge` — or just long-press the **LEDBadge+**
icon in the launcher and uninstall normally.

## Build it yourself

> **Easiest path: ask Claude Code.** This repo ships with a `CLAUDE.md`
> that primes [Claude Code](https://claude.com/claude-code) with everything
> it needs to make changes, rebuild, install, and debug. Open the repo
> with Claude Code, describe what you want to change ("tweak the ö dots,"
> "translate this Chinese button," "add support for Czech ě/š/č"), and it
> will drive the rest. The manual steps below are documented for anyone
> who wants to drive the toolchain by hand.

A one-shot build is provided as `./build.sh`. The script regenerates the font,
assembles the smali, decodes the original APK, swaps in the patched bits,
rebuilds, aligns, and signs.

### Requirements

- Linux (tested on Debian 13 arm64; x86_64 should also work)
- `default-jdk-headless` (OpenJDK 21 or newer)
- `apktool` (Debian package — only used to assemble smali into `classes.dex`)
- `zipalign` and `apksigner` (Debian packages)
- `python3` (for the glyph patcher)
- [APKEditor](https://github.com/REAndroid/APKEditor) jar at `~/APKEditor.jar`
  (handles the resources.arsc repack that aapt2 chokes on for this APK)

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

### Generate a debug signing key (once)

```sh
keytool -genkey -v -keystore debug.keystore -alias debugkey -keyalg RSA -keysize 2048 \
        -validity 10000 -storepass android -keypass android \
        -dname "CN=Debug, OU=Local, O=Local, L=Local, S=Local, C=DE"
```

### Build

```sh
./build.sh
# → ledcard-patched.apk
```

Under the hood that does:

1. `python3 patch_glyphs.py` — reads `umlaut_glyphs.txt`, writes a patched
   `ASC11`. Copy into `smali/assets/`.
2. `apktool b smali` — assembles patched smali into `classes.dex`. The aapt
   resource step fails on a couple of `$`-prefixed drawable filenames
   generated by R8 obfuscation — we ignore that and only use `classes.dex`.
3. `APKEditor d` — decodes the original APK into `decoded/` (its own
   intermediate format, including a JSON resource table and raw dex).
4. Copies our patched files into the decoded tree: `classes.dex`, `ASC11`,
   `strings.xml` (English translations), `AndroidManifest.xml` (new
   package id + FileProvider authorities), and a tweaked `package.json`
   so the resource table matches the manifest.
5. `APKEditor b` — rebuilds the APK.
6. `zipalign` + `apksigner sign` with the debug keystore.

## Project layout

```
.
├── ledcard-patched.apk      # the final, ready-to-install patched APK
├── build.sh                 # end-to-end build (decode → patch → rebuild → sign)
├── patch_glyphs.py          # reads umlaut_glyphs.txt, writes patched ASC11
├── umlaut_glyphs.txt        # SOURCE OF TRUTH for every patched glyph
└── smali/                   # apktool-decompiled tree of the original APK
    ├── AndroidManifest.xml  # package id + FileProvider authorities renamed
    ├── assets/ASC11         # patched font (written by patch_glyphs.py)
    ├── res/values/strings.xml          # English translations + app_name → LEDBadge+
    └── smali/com/yannis/ledcard/
        ├── BuildConfig.smali           # APPLICATION_ID = io.github.jpsy.ledbadge
        ├── util/LedDataUtil.smali      # fixUmlauts() + 4 call-site patches
        └── activity/
            ├── MainActivity.smali           # permission-toast translations
            └── LedSettingsActivity.smali    # button/toast translations
```

> `umlaut_glyphs.txt` keeps its historical name, but it now contains all
> patched glyphs — German + French + Danish + Polish.

## How it works

### Why the upstream app fails on umlauts

The encoder in `LedDataUtil.getLibMsgBytes` decides per character whether a
glyph comes from the ASCII font (`ASC11`) or from a CJK font table
(`HZK11`/`JPK11`/`KRK11`/`TWK11`):

```java
char charAt = str.charAt(i);
if (charAt >= 128) {
    // CJK path: look up by 2-byte encoded value
    int[] code = getByteCodeCH(new String(cArr));   // encodes via GB2312/shift-jis/etc.
    byte[] glyph = readCharacter(ctx, code[0], code[1], i);
} else {
    // ASCII path: look up by single byte
    byte b = new String(cArr).getBytes(ENCODE)[0];
    byte[] glyph = readASC(ctx, b, i);
}
```

For German/English/French locales `ENCODE` defaults to `GB2312`. An umlaut
like `ü` (codepoint `0xFC`) takes the CJK branch, but GB2312 can't represent
it — so `getBytes("GB2312")` returns the single replacement byte `[0x3F]` and
`code[1]` crashes with `ArrayIndexOutOfBoundsException`. (On some flows the
symptom is subtler: `LangUtils.isUserFontLib` returns `false` for umlaut
strings, so they take a TTF rendering fallback whose pixel measurement uses
a different font than the actual draw — byte counts and glyph widths drift
apart and the badge rejects the frame.)

### The fix

A new helper `LedDataUtil.fixUmlauts(String)` is called at the four entry
points that read a message from `SendContent`. It maps Unicode codepoints of
the supported special characters to control-character slots `0x01..0x1F`
that we filled in `ASC11`:

| Char | Codepoint | Slot |   | Char | Codepoint | Slot |   | Char | Codepoint | Slot |
|------|-----------|------|---|------|-----------|------|---|------|-----------|------|
| ä    | U+00E4    | 0x01 |   | à    | U+00E0    | 0x08 |   | å    | U+00E5    | 0x11 |
| ö    | U+00F6    | 0x02 |   | é    | U+00E9    | 0x09 |   | ą    | U+0105    | 0x12 |
| ü    | U+00FC    | 0x03 |   | è    | U+00E8    | 0x0A |   | ć    | U+0107    | 0x13 |
| Ä    | U+00C4    | 0x04 |   | ê    | U+00EA    | 0x0B |   | ę    | U+0119    | 0x14 |
| Ö    | U+00D6    | 0x05 |   | ç    | U+00E7    | 0x0C |   | ł    | U+0142    | 0x15 |
| Ü    | U+00DC    | 0x06 |   | î    | U+00EE    | 0x0D |   | ń    | U+0144    | 0x16 |
| ß    | U+00DF    | 0x07 |   | ô    | U+00F4    | 0x0E |   | ó    | U+00F3    | 0x17 |
|      |           |      |   | æ    | U+00E6    | 0x0F |   | ś    | U+015B    | 0x18 |
|      |           |      |   | ø    | U+00F8    | 0x10 |   | ź    | U+017A    | 0x19 |
|      |           |      |   |      |           |      |   | ż    | U+017C    | 0x1A |
|      |           |      |   |      |           |      |   | É    | U+00C9    | 0x1B |
|      |           |      |   |      |           |      |   | Ç    | U+00C7    | 0x1C |
|      |           |      |   |      |           |      |   | Æ    | U+00C6    | 0x1D |
|      |           |      |   |      |           |      |   | Ø    | U+00D8    | 0x1E |
|      |           |      |   |      |           |      |   | Å    | U+00C5    | 0x1F |

After substitution every character is `< 128`, so `isUserFontLib` returns
`true`, the encoder takes the ASCII branch, and `readASC(ctx, slot, 11)`
reads the correct glyph from the patched font. The original message string
in the UI is untouched — the substitution happens only on the BLE-bytes path.

`ASC11` is a 256-entry table of 11-byte glyphs (8 pixels wide × 11 tall,
MSB on the left). Slots `0x01..0x1F` were empty in the upstream font; we
just filled them in.

## Contributing

### Tweak a glyph

`umlaut_glyphs.txt` is the source of truth. Each glyph is 11 rows of 8
characters (`#` = pixel on, `.` = pixel off). Edit it, then `./build.sh`.

The initial designs for the European characters are deliberately quick
starting points — produced by overlaying a small "diacritic mask" on the
base letter — and many of them want refinement. Improvements (better æ/Æ,
clearer ł/ø strokes, prettier cedilla/ogonek tails) very welcome.

### Add another language

1. Pick an empty slot — the patched font has 31 used slots
   (`0x01..0x1F`); there are still empty ranges further up (`0x7F`,
   `0x81..0x9F`, `0xE0..0xFC` apart from the slots we already filled)
   that you can use, but anything `≥ 0x80` requires also relaxing the
   `if (charAt >= 128)` check in `LedDataUtil.getLibMsgBytes` so the
   encoder doesn't take the CJK branch first.
2. Add a `[slot 0xNN char]` block to `umlaut_glyphs.txt`.
3. Add a matching `const/16` / `replace(CC)` pair to
   `LedDataUtil.fixUmlauts` in
   `smali/smali/com/yannis/ledcard/util/LedDataUtil.smali`, mapping the
   character's Unicode codepoint to your new slot.
4. `./build.sh` and test.

### Translate or fix a string

- `smali/res/values/strings.xml` — string-resource labels (image picker,
  default-locale fallbacks). Edit directly.
- `smali/smali/com/yannis/ledcard/**/*.smali` — hardcoded strings (toasts,
  buttons). Search for the unicode escape
  (`grep -rn '\\u[4-9a-f][0-9a-f]\{3\}' smali/smali/`) and replace the
  whole quoted string in place.

### Add a feature

You'll be editing smali. Recommended workflow:

1. `jadx-gui ledcard.apk` to browse decompiled Java (read-only, much
   easier to navigate than smali).
2. Find the method you want to change in `decompiled/sources/com/yannis/ledcard/…`.
3. Locate the matching `.smali` file in `smali/smali/com/yannis/ledcard/`.
4. Make minimal edits — every register reference matters; never reorder
   `.locals` declarations or break the `move-result` chain.
5. Test by rebuilding and installing; if the app crashes,
   `adb logcat | grep AndroidRuntime` will point at the bad smali line.

## Legal

This project is an unofficial modification of a third-party Android app.
The upstream app (`com.yannis.ledcard`) is © its original authors — only the
patches in this repository are the work of this project, distributed in
good faith for personal use with hardware the user already owns. The
patched APK uses a different application id and a different launcher icon
label so it can coexist with the upstream version without claiming to be
it. If you are the upstream author and would like changes here removed or
upstreamed, please open an issue.

The product image at the top of this README is hot-linked from AliExpress
for illustrative purposes and is the property of the listing's vendor.

The `ledcard-patched.apk` file in this repo is the original APK with the
patches in this repo applied. Don't redistribute the *unmodified* original
— get that from the Play Store.
