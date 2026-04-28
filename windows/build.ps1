# build.ps1 - Build Extra for Windows

Write-Host "Installing Pake..."
npm install -g pake-cli

Write-Host "Building..."
pake https://extra.email --name Extra --inject linux/inject-fix.js

Write-Host "Done! Find your .msi in the current directory."
