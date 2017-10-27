[CmdletBinding()]
param (
    [switch]$build,
    [switch]$deploy,
    [switch]$serve
)

if (!(Get-Command -Name "hexo" -ErrorAction SilentlyContinue)) {
    write-error "Hexo not installed." -ErrorAction Stop
}

if ($build) {
    Write-Host "Cleaning Folders" -ForegroundColor Green
    hexo clean

    Write-Host "Building" -ForegroundColor Green
    hexo generate
}

if ($deploy) {
    Write-Host "Cleaning Folders" -ForegroundColor Green
    hexo clean

    Write-Host "Deploying" -ForegroundColor Green
    hexo deploy
}

if ($serve) {
    start-process hexo serve
    start-sleep -Seconds 3
    start-process "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "http://localhost:4000"
}
