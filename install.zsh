#!/usr/bin/env zsh
set -euo pipefail

CURRENT_DIR="${0:A:h}"
TARGET_DIR="$HOME/.zshrc"

# ── Back-up current ~/.zshrc (if any) ────────────────────────────
if [[ -f "$TARGET_DIR" ]]; then
    cp "$TARGET_DIR" "${TARGET_DIR}.bak.$(date +%Y%m%d%H%M%S)"
    echo "🔄  Back-up created: ${TARGET_DIR}.bak.*"
fi

# ── Copy new config ──────────────────────────────────────────────
cp "$CURRENT_DIR/.zshrc" "$TARGET_DIR"
echo "✅  Installed ${CURRENT_DIR}/zshrc → ${TARGET_DIR}"

# ── Reload shell ─────────────────────────────────────────────────
exec zsh -l # full login reload
