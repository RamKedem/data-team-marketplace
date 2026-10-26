#!/bin/sh
# Install the plugins in this folder as local Cursor plugins.
# Cursor loads local plugins only from ~/.cursor/plugins/local and skips symlinks that point
# elsewhere, so this copies. Run it after every edit, then Developer: Reload Window in Cursor.
set -e
here="$(cd "$(dirname "$0")" && pwd)"
dest="$HOME/.cursor/plugins/local"
mkdir -p "$dest"
for p in "$here"/*/.cursor-plugin/plugin.json; do
  plugin="$(basename "$(dirname "$(dirname "$p")")")"
  rm -rf "$dest/$plugin"
  cp -r "$here/$plugin" "$dest/$plugin"
  echo "Installed $plugin -> $dest/$plugin"
done
echo "Now run Developer: Reload Window in Cursor."
