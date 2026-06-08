# CLAUDE.md — context for Claude Code working on this repo

This file is loaded automatically by Claude Code. It captures the
non-obvious bits of how this project is structured so a fresh session can
pick up immediately. The user-facing README is in `README.md`; this file
is the developer/maintainer notebook.

## What this project is

A patch for the Android app **com.yannis.ledcard** (the vendor app for a
common BLE-controlled 44×11 pixel LED name badge sold on AliExpress and
elsewhere). The patched APK is shipped as **`io.github.jpsy.ledbadge`**
(launcher label "LEDBadge+") and installs side-by-side with the upstream.

Three concrete features:

1. **German umlauts** (`ä ö ü Ä Ö Ü ß`) work on the badge. The upstream
   either crashes or renders nonsense for them.
2. **24 more European special characters** (French / Danish / Polish).
3. **English UI** — the residual Chinese strings (image-picker labels,
   permission toasts, a couple of buttons) are translated.

## Build pipeline — read this before changing anything

The build is a hybrid of `apktool` and `APKEditor` because **neither tool
alone works on this APK on a Debian arm64 system**:

- `apktool` 2.7 (Debian) fails its resource-rebuild step because the
  upstream APK contains `$`-prefixed drawable filenames (R8 obfuscation
  artefacts) that aapt rejects. We use apktool *only* to assemble smali
  into `classes.dex` and *ignore* the resource-step error.
- `apktool` 2.10 + system aapt2 (2.19 from Debian) fails because the
  new apktool passes an `--no-compile-sdk-metadata` flag the old aapt2
  doesn't understand.
- A newer aapt2 isn't readily packaged for arm64 Linux.
- `APKEditor` (`~/APKEditor.jar`, REAndroid) sidesteps the aapt2 problem
  entirely by editing the resource table via its own JSON-based format,
  so it builds the APK successfully.

**The pipeline** (codified in `build.sh`):

1. Regenerate `ASC11` font from `umlaut_glyphs.txt` via `patch_glyphs.py`.
2. `apktool b smali` — produces `smali/build/apk/classes.dex` (resource
   step fails; ignored).
3. `APKEditor d` — decodes the original APK into `decoded/`.
4. Copy patched pieces into `decoded/`:
   - `classes.dex` (the patched dex)
   - `assets/ASC11` (the patched font)
   - `res/values/strings.xml` (the English translations)
   - **NOT** `AndroidManifest.xml` — instead `sed` the package name and
     FileProvider authorities in place. (See the gotcha below.)
   - `package.json` — `package_name` updated to match the manifest.
   - Regenerate icons + splash via `make_icons.py`.
5. `APKEditor b` — produces the unsigned APK.
6. `zipalign` + `apksigner sign` with `debug.keystore`.

### Critical gotchas

- **Don't `cp smali/AndroidManifest.xml decoded/AndroidManifest.xml`.**
  apktool strips `versionCode`, `versionName`, and `<uses-sdk>` from the
  manifest and stores them in `apktool.yml`. APKEditor's decoded manifest
  has them; the apktool one doesn't. Copying the apktool manifest over
  yields an APK with no SDK target, which Android refuses to install
  (`INSTALL_FAILED_DEPRECATED_SDK_VERSION: found 0`). Patch the APKEditor
  manifest in place with `sed`.
- **`$`-prefixed res file renames are a dead end.** Renaming them to drop
  the `$` lets aapt accept them but breaks public.xml resource-id mappings
  in subtle ways. Don't go there; stay on the APKEditor path.
- **The patched APK is signed with a self-generated debug key.** Play
  Protect will warn on install — `More details → Install anyway`. This is
  unavoidable for any self-signed APK.

## Source-of-truth file map

| File | Purpose |
|------|---------|
| `umlaut_glyphs.txt` | Source of truth for every patched glyph (8×11 pixel bitmaps in ASCII art). Read by `patch_glyphs.py`. Despite the historical name, contains all glyphs, not just umlauts. |
| `patch_glyphs.py` | Reads `umlaut_glyphs.txt`, writes patched `extracted/assets/ASC11.patched`. `build.sh` then copies that into `smali/assets/ASC11`. |
| `make_icons.py` | Generates launcher icons (5 densities) and splash. Source of truth for "what the icon looks like." Outputs directly into `decoded/`. |
| `build.sh` | End-to-end build. Run this to rebuild. |
| `smali/smali/com/yannis/ledcard/util/LedDataUtil.smali` | Contains the `fixUmlauts(String)` method (the codepoint→slot mapping) and four call-site patches. |
| `smali/smali/com/yannis/ledcard/activity/MainActivity.smali` | Permission-toast translations. |
| `smali/smali/com/yannis/ledcard/activity/LedSettingsActivity.smali` | Button-label and toast translations. |
| `smali/res/values/strings.xml` | English translations of the `ip_*` image-picker strings (+ `app_name → LEDBadge+`). |
| `smali/smali/com/yannis/ledcard/BuildConfig.smali` | `APPLICATION_ID` constant — updated to match new package. |
| `ledcard-patched.apk` | The signed deliverable. Committed so users can just download it from GitHub. |

The original APK is **not committed** (don't redistribute upstream) —
users pull it from their phone via `adb pull`.

## The umlaut bug & fix in one paragraph

In `LedDataUtil.getLibMsgBytes`, a `charAt >= 128` test routes characters
to either an ASCII glyph lookup (`readASC`) or a CJK lookup
(`getByteCodeCH` → `readCharacter`). For German/English/French locales
`ENCODE` defaults to `GB2312`, which has no Latin Extended characters, so
`new String("ü").getBytes("GB2312")` returns the single replacement byte
`[0x3F]` and the subsequent `bytes[1]` access crashes with
`ArrayIndexOutOfBoundsException`. The fix is `fixUmlauts(String)` — a new
static method that maps every supported special character's Unicode
codepoint to a control-character slot in `0x01..0x1F`, called at the four
call sites that read message text. After substitution every character is
`< 128`, so the ASCII branch is taken cleanly and `readASC(ctx, slot, 11)`
fetches our patched glyph.

## Slot map (codepoint → ASC11 slot)

```
0x01 ä  U+00E4    0x08 à  U+00E0    0x11 å  U+00E5    0x1B É  U+00C9
0x02 ö  U+00F6    0x09 é  U+00E9    0x12 ą  U+0105    0x1C Ç  U+00C7
0x03 ü  U+00FC    0x0A è  U+00E8    0x13 ć  U+0107    0x1D Æ  U+00C6
0x04 Ä  U+00C4    0x0B ê  U+00EA    0x14 ę  U+0119    0x1E Ø  U+00D8
0x05 Ö  U+00D6    0x0C ç  U+00E7    0x15 ł  U+0142    0x1F Å  U+00C5
0x06 Ü  U+00DC    0x0D î  U+00EE    0x16 ń  U+0144
0x07 ß  U+00DF    0x0E ô  U+00F4    0x17 ó  U+00F3
                  0x0F æ  U+00E6    0x18 ś  U+015B
                  0x10 ø  U+00F8    0x19 ź  U+017A
                                    0x1A ż  U+017C
```

31 of 31 control-char slots used. **To add more glyphs**, you have two
options:
1. Re-use an already-mapped slot for something else (cheap, just edits).
2. Use slots `≥ 0x80` — these are currently rejected by the
   `if (charAt >= 128)` check in `getLibMsgBytes`. You'd need to either
   patch that check to permit your specific codepoints, or use the
   bypass-via-substitution approach with a different escape (e.g., slots
   in the empty `0x7F` or `0x81-0x9F` range that pass through GB2312
   intact).

## Application id, FileProvider, app label

- `package` (manifest) = `io.github.jpsy.ledbadge`
- `BuildConfig.APPLICATION_ID` = `io.github.jpsy.ledbadge`
- FileProvider authority (ImagePicker) = `io.github.jpsy.ledbadge.provider`
- FileProvider authority (CaocInitProvider) = `io.github.jpsy.ledbadge.customactivityoncrashinitprovider`
- `app_name` = `LEDBadge+`
- Java class names (`com.yannis.ledcard.…`) are **unchanged** — they're
  JVM identifiers and live inside `classes.dex`, not part of app identity.

## Common workflows

### Iterate on a glyph

```sh
# Edit umlaut_glyphs.txt (or invoke the user to)
./build.sh
adb install -r ledcard-patched.apk
```

### Add a new translation

1. Find the offending string. UI-visible strings live either in
   `smali/res/values/strings.xml` or as hardcoded Unicode escapes in
   smali files. Search:
   ```sh
   grep -rEn '\\u[4-9a-f][0-9a-f]{3}' smali/smali/com/yannis/ledcard/
   ```
2. Replace in place — `<string>` value for XML, the whole `"\uXXXX..."`
   literal for smali.
3. `./build.sh && adb install -r ledcard-patched.apk`.

### Add a new language's special characters

1. Edit `umlaut_glyphs.txt`, add `[slot 0xNN char]` blocks for each new
   character (using free slots — see slot map above).
2. Extend `LedDataUtil.fixUmlauts` in
   `smali/smali/com/yannis/ledcard/util/LedDataUtil.smali` — add a
   `const/16 v0, 0x<codepoint>` / `const/16 v1, 0x<slot>` /
   `invoke-virtual replace(CC)` / `move-result-object p0` block per
   character, before the final `return-object p0`.
3. `./build.sh`.

### Debug an install or runtime failure

```sh
adb install -r ledcard-patched.apk         # see exit reason
adb logcat -c && adb logcat | grep AndroidRuntime    # crash backtraces
```

If you get `INSTALL_FAILED_DEPRECATED_SDK_VERSION: found 0`, the manifest
got broken — check `aapt dump badging ledcard-patched.apk`, you should
see `versionCode='49'`, `sdkVersion:'18'`. If empty: see the "critical
gotchas" section above.

## Tools required

`default-jdk-headless`, `apktool` (Debian package), `zipalign`,
`apksigner`, `python3` + `python3-pil`, plus `~/APKEditor.jar` (download
from REAndroid/APKEditor releases). For decompilation work,
`jadx`/`jadx-gui` are very useful for reading Java instead of smali —
also bundled in `~/jadx/bin/`.

## Git hygiene

- Generated/intermediate dirs are gitignored: `decoded/`, `decompiled/`,
  `extracted/`, `smali/build/`, `stage/`, `*.orig`.
- `ledcard.apk` (the upstream original) is gitignored — don't
  redistribute it.
- `ledcard-patched.apk` *is* committed so users can download it
  directly from GitHub. Update it (and commit) on every meaningful change.
- `debug.keystore` is gitignored — it's a personal signing key.

## What's left unfinished / known limitations

- The initial European glyph designs are programmatic (base letter +
  diacritic overlay) and will probably want visual refinement. Easiest
  iteration: edit `umlaut_glyphs.txt`, `./build.sh`, `adb install -r ...`.
- No adaptive launcher icon (`mipmap-anydpi-v26/ic_launcher.xml`). On
  Android 8+ with strict adaptive-icon themes the launcher may
  display the legacy PNG inside a generic square backdrop instead of
  using the full canvas. Adding adaptive icons would mean adding new
  resource entries; doable but not done.
- The `Log.e` debug messages in `LedDataUtil` and a couple of other
  files still contain Chinese. Translating them is harmless but invisible
  to users (logcat-only).
