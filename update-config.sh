#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUTPUT="$DIR/config"

THEME="$DIR/theme"
USER="$DIR/user-config"

# Ensure files exist
[ -f "$THEME" ] || echo "# Empty theme file" > "$THEME"
[ -f "$USER" ] || echo "# Empty user overrides" > "$USER"

cat "$USER" > "$OUTPUT"
echo "" >> "$OUTPUT"
cat "$THEME" >> "$OUTPUT"

echo "✅ Ghostty config generated at $OUTPUT"
