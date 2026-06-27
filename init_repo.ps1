$repo = 'C:\Users\johns\OneDrive\Desktop\Terrarium TV 2.0.5'
Set-Location $repo
if (-not (Test-Path -LiteralPath '.git')) {
    git init | Out-Host
}
git add --all
git commit -m 'Terrarium TV v2.0.5 clean release'
Write-Host 'DONE'