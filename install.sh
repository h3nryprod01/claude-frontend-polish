#!/usr/bin/env bash
# Install every skill in skills/ into Claude Code's skills dir.
set -euo pipefail
DEST="${CLAUDE_CONFIG_DIR:-$HOME/.claude}/skills"
SRC="$(cd "$(dirname "$0")" && pwd)/skills"
mkdir -p "$DEST"
for d in "$SRC"/*/; do
  name="$(basename "$d")"
  rm -rf "$DEST/$name"
  cp -R "$d" "$DEST/$name"
  echo "Installed skill: $name -> $DEST/$name"
done
echo "Done. Restart Claude Code to activate."
