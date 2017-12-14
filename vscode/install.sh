#!/bin/sh
#
# Install the settings file on macOS.

src=./settings.json
dst="$HOME/Library/Application Support/Code/User/"

echo "Installing $src into $dst"
cp "$src" "$dst"

