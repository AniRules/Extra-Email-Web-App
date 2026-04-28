#!/bin/bash

APP_NAME="ExtraEmail"
TARGET_URL="https://extra.email"

echo "--- Building Windows .exe ---"
# Note: This creates a folder containing the .exe
nativefier --name "$APP_NAME" \
           --platform windows \
           --arch x64 \
           --single-instance \
           "$TARGET_URL"

echo "--- Building Linux AppImage ---"
# This creates a single portable .AppImage file
appnativefy --name "$APP_NAME" \
            --url "$TARGET_URL"

echo "--- Done! ---"
echo "Windows folder is in: $(pwd)"
echo "Linux AppImage is in: ~/appnativefy"
