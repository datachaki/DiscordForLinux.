#!/bin/bash
rm -rf "$DEST/Discord" >/dev/null 2>&1
URL="https://discord.com/api/download?platform=linux&format=tar.gz"
DEST="$HOME/Discord"
ARCHIVE="$HOME/discord.tar.gz"

echo "[*] Downloading Discord..."
curl -L "$URL" -o "$ARCHIVE"

echo "[*] Extracting to $DEST..."
mkdir -p "$DEST"
tar -xzf "$ARCHIVE" -C "$DEST"

rm "$ARCHIVE"

