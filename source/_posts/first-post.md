---
title: First Post
date: 2017-10-12 22:40:13
tags: 
- "First"
- "Shiny"
---
The one where Paul writes a post using hexo.
<!-- more -->
Why Hexo...?
I guess, why not. 
It is simple and it works pretty well. There are lots of themes for it and it isn't hard to use the JS ecosystem to extend it. Also, I like JS...

Why Github...?
Once again, it is the simplest place to host a static site that has a memorable name. Also github.io is a cool domain for cool kids and I wanted to be cool. 

The reality is, as much as I liked my old Wyam blog and the azure hosting, when I came to try and get back ino it, things didn't work any more. It wasn't anything unsolvable, but it was a slightly annoying amount of friction. The issue was with Global Metadata tags which were removed. 
Also the build and release pipeline was cool, but over the top. Cake have also revved a few times and my cake build system didnt work any more. There is currently a pull request to fix this, but still.  
Also, Wyam doesn't have the breadth of themes alternatives like Hugo, Jekyll, Hexo and others do. It is getting better, but is not there yet. 

With Hexo, I can write, then run `Hexo Deploy` and it deploys to Github. That is about as simple as it gets. 

Overall it isn't a bad way to blog and it is simple.

Lastly because I wanted to make it a little easier on myself, here is a simple Powershell script to set up and run some tasks. 
```
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
```
Build will clean and build the blog.
Deploy cleans and then runs the deployment command which will build and deploy to Github.
Serve will clean, build and serve the blog locally and as a bonus, start Firefox on the right page to check things out. 