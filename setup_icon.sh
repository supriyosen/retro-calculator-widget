#!/bin/bash

# Source image from artifacts (Local path for this user)
SRC_IMG="/Users/supriyosen/.gemini/antigravity/brain/a5ed20e7-3f24-493e-921f-ff3dbadcee03/media__1771396410264.png"
ASSETS_DIR="assets"
ICONSET_DIR="${ASSETS_DIR}/icon.iconset"

# Ensure assets directory exists
mkdir -p "$ASSETS_DIR"
mkdir -p "$ICONSET_DIR"

echo "Copying icon..."
cp "$SRC_IMG" "$ASSETS_DIR/icon.png"

echo "Generating iconset..."
# 16x16
sips -z 16 16     "$SRC_IMG" --out "${ICONSET_DIR}/icon_16x16.png"
sips -z 32 32     "$SRC_IMG" --out "${ICONSET_DIR}/icon_16x16@2x.png"
# 32x32
sips -z 32 32     "$SRC_IMG" --out "${ICONSET_DIR}/icon_32x32.png"
sips -z 64 64     "$SRC_IMG" --out "${ICONSET_DIR}/icon_32x32@2x.png"
# 128x128
sips -z 128 128   "$SRC_IMG" --out "${ICONSET_DIR}/icon_128x128.png"
sips -z 256 256   "$SRC_IMG" --out "${ICONSET_DIR}/icon_128x128@2x.png"
# 256x256
sips -z 256 256   "$SRC_IMG" --out "${ICONSET_DIR}/icon_256x256.png"
sips -z 512 512   "$SRC_IMG" --out "${ICONSET_DIR}/icon_256x256@2x.png"
# 512x512
sips -z 512 512   "$SRC_IMG" --out "${ICONSET_DIR}/icon_512x512.png"
sips -z 1024 1024 "$SRC_IMG" --out "${ICONSET_DIR}/icon_512x512@2x.png"

echo "Creating .icns file..."
iconutil -c icns "$ICONSET_DIR"

# Cleanup
rm -R "$ICONSET_DIR"

echo "Icon setup complete! 'assets/icon.icns' created."
