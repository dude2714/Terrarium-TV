# Terrarium TV

Standalone APK folder for Terrarium TV.

## Files

- Terrarium TV.apk - APK payload
- index.html - local/hosted download page
- release.json - release metadata
- CHANGELOG.md - release history
- Start Terrarium TV.cmd - local launcher
- UPDATE-STATUS.txt - local checkpoint notes
- scripts/Publish-New-TerrariumVersion.ps1 - one-command release publisher

## Current Release

- Version: v3.6.0
- SHA-256: 2877CB1E695D888C5AEB51AD0D41D4CEB219228185EB6237C37369A6B57D5A35

## Publish New Release

From the repo root, run:

```powershell
.\scripts\Publish-New-TerrariumVersion.ps1 -NewApkPath "C:\path\to\new\Terrarium TV.apk" -Version "v3.6.1" -Notes "Release notes here"
```

Then commit and push:

```powershell
git add "Terrarium TV.apk" release.json CHANGELOG.md
git commit -m "Publish Terrarium TV v3.6.1"
git push
```
