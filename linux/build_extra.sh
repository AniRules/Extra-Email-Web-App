#!/bin/bash
# Install dependencies
sudo apt install -y libwebkit2gtk-4.1-dev libjavascriptcoregtk-4.1-dev libsoup-3.0-dev libssl-dev libgtk-3-dev libayatana-appindicator3-dev librsvg2-dev build-essential

# Install pake
sudo npm install -g pake-cli

# Build
sudo pake https://extra.email --name Extra --inject inject-fix.js
