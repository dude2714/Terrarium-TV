# Terrarium TV

Standalone Android APK folder for Terrarium TV.

## Files

- Terrarium TV.apk - current APK payload for Android devices
- index.html - local/hosted download page
- release.json - release metadata
- CHANGELOG.md - release history
- INSTALL-ANDROID.md - short install steps for phones, Android TV, and TV boxes
- UPDATE-STATUS.txt - local checkpoint notes
- apk-work/ - decompiled APK workspace

## Build Notes

The current signed APK is already built and packaged in this folder for sideloading on Android devices.

If you rebuild it, use the local `tools` folder and the decompiled workspace under `apk-work/`.

## Current Release

- Version: v2.0.5
- File: Terrarium TV.apk
- SHA-256: DD552D5AF641042FC51A292CF8E82D8421EFD3E67CD7E247953389D5A5F5EC73

## Install on Android Devices

1. Copy `Terrarium TV.apk` to the device, or download it from `index.html`.
2. Enable installs from unknown apps for the file browser, downloader, or browser you use.
3. Open the APK and install it.

## Publish New Release

Update `release.json` and `index.html` when you replace the APK.

Then commit and push:

```powershell
git add release.json index.html README.md
git commit -m "Publish Terrarium TV v2.0.5"
git push
```
