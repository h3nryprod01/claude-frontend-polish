#!/usr/bin/env bash
# Install the cssfx-design skill into Claude Code.
set -euo pipefail
DEST="${CLAUDE_CONFIG_DIR:-$HOME/.claude}/skills/cssfx-design"
SRC="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$DEST"
cp "$SRC/SKILL.md" "$DEST/"
cp -R "$SRC/assets" "$DEST/"
cp -R "$SRC/references" "$DEST/"
echo "Installed cssfx-design -> $DEST"
echo "Restart Claude Code to activate. Or just drop assets/cssfx.css into any project."
