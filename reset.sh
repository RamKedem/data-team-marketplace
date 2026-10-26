#!/bin/sh
# Remove the local installs of the plugins in this folder (the source here is kept).
# Then run Developer: Reload Window in Cursor.
set -e
here="$(cd "$(dirname "$0")" && pwd)"
dest="$HOME/.cursor/plugins/local"
for p in "$here"/*/.cursor-plugin/plugin.json; do
  plugin="$(basename "$(dirname "$(dirname "$p")")")"
  rm -rf "$dest/$plugin"
  echo "Removed $dest/$plugin"
done
