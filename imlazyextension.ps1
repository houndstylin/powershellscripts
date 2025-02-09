Clear-Host

$prefetchPath = "C:\Windows\Prefetch"

$prefetchFiles = Get-ChildItem -Path $prefetchPath -Filter "*.pf"

$modifiedFiles = $prefetchFiles | Where-Object { $_.Name -notmatch "\.exe" }

if ($modifiedFiles) {
    Write-Host "Suspicious files found:" -ForegroundColor Red
    $modifiedFiles | ForEach-Object { Write-Host $_.Name }
} else {
    Write-Host "Nothing suspicious found." -ForegroundColor Green
}
