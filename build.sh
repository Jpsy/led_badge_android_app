#!/usr/bin/env bash
# Build ledcard-patched.apk from sources in this repo.
#
# Requires (see README for install steps):
#   - apktool (Debian package)         — assembles smali into classes.dex
#   - ~/APKEditor.jar                   — rebuilds resources.arsc + signs APK structure
#   - zipalign, apksigner               — Android SDK build-tools / Debian packages
#   - python3                           — runs patch_glyphs.py
#   - ledcard.apk in current dir        — pulled from your phone via adb (see README)
#   - debug.keystore in current dir     — generated once via `keytool -genkey ...`
#
# Output: ledcard-patched.apk

set -euo pipefail

APKEDITOR="${APKEDITOR:-$HOME/APKEditor.jar}"
ORIG=ledcard.apk
KEYSTORE=debug.keystore

[[ -f $ORIG ]]     || { echo "ERROR: $ORIG not found. Pull it from your phone — see README."; exit 1; }
[[ -f $KEYSTORE ]] || { echo "ERROR: $KEYSTORE not found. Generate one — see README."; exit 1; }
[[ -f $APKEDITOR ]] || { echo "ERROR: APKEditor not found at $APKEDITOR. Download — see README."; exit 1; }

echo "==> 1. Regenerate patched ASC11 font from umlaut_glyphs.txt"
python3 patch_glyphs.py
cp extracted/assets/ASC11.patched smali/assets/ASC11

echo "==> 2. Assemble smali into classes.dex (ignore the aapt resource-step warning)"
rm -rf smali/build
apktool b smali --aapt /usr/bin/aapt -o /dev/null 2>&1 | grep -E "Smaling|classes" || true
[[ -f smali/build/apk/classes.dex ]] || { echo "ERROR: classes.dex not built"; exit 1; }

echo "==> 3. Decode original APK with APKEditor"
rm -rf decoded
java -jar "$APKEDITOR" d -i "$ORIG" -o decoded -t xml -dex 2>&1 | tail -3

echo "==> 4. Apply patched files to decoded tree"
cp smali/build/apk/classes.dex                decoded/dex/classes.dex
cp smali/assets/ASC11                         decoded/root/assets/ASC11
cp smali/res/values/strings.xml               decoded/resources/package_1/res/values/strings.xml
cp smali/AndroidManifest.xml                  decoded/AndroidManifest.xml
# Update APKEditor's resource-table package name to match the manifest
python3 -c "
import json
with open('decoded/resources/package_1/package.json') as f: p = json.load(f)
p['package_name'] = 'io.github.jpsy.ledbadge'
with open('decoded/resources/package_1/package.json','w') as f: json.dump(p, f, indent=2)
print('  package.json package_name =', p['package_name'])
"
# Regenerate launcher icons + splash with 'plus' line so we're distinct from the upstream
python3 make_icons.py | tail -3

echo "==> 5. Rebuild APK with APKEditor"
rm -f ledcard-patched-unsigned.apk
java -jar "$APKEDITOR" b -i decoded -o ledcard-patched-unsigned.apk 2>&1 | tail -3

echo "==> 6. Align + sign"
zipalign -p -f 4 ledcard-patched-unsigned.apk ledcard-patched-aligned.apk
apksigner sign --ks "$KEYSTORE" --ks-pass pass:android --key-pass pass:android \
               --out ledcard-patched.apk ledcard-patched-aligned.apk

echo "==> 7. Verify"
apksigner verify -v ledcard-patched.apk 2>&1 | grep -vE "WARNING|^$" | head -3

echo
echo "Done. Output: ledcard-patched.apk ($(stat -c%s ledcard-patched.apk) bytes)"
