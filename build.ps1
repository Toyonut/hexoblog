if (Get-Command -Name "hexo" -ErrorAction SilentlyContinue) {
    Write-Host "Cleaning Folders" -ForegroundColor Green
    hexo clean

    Write-Host "Building and deploying" -ForegroundColor Green
    hexo deploy
} else {
    Write-Error "Hexo not installed"
}