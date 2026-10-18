#!/bin/bash

# One-time setup for the parts of this theme Omarchy doesn't apply by itself:
# tmux colors and red fastfetch accents. Installs two theme-set hooks and points
# tmux at the current theme's tmux.conf. Safe to re-run.
#
# Both hooks are theme-agnostic: with a theme that doesn't ship tmux.conf or
# fastfetch.jsonc, tmux and fastfetch fall back to their usual configs.

set -e

THEME_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
TMUX_CONF="$HOME/.config/tmux/tmux.conf"
SOURCE_LINE="source-file -q ~/.local/state/omarchy/current/theme/tmux.conf"

omarchy hook install theme-set "$THEME_DIR/hooks/tmux-theme.sh"
omarchy hook install theme-set "$THEME_DIR/hooks/fastfetch-theme.sh"

mkdir -p "${TMUX_CONF%/*}"
if ! grep -qF "$SOURCE_LINE" "$TMUX_CONF" 2>/dev/null; then
  printf '\n# Colors from the current Omarchy theme, if it ships a tmux.conf\n%s\n' "$SOURCE_LINE" >>"$TMUX_CONF"
  echo "Added theme source line to $TMUX_CONF"
fi

# Apply to the current theme now rather than on the next theme switch.
bash "$THEME_DIR/hooks/tmux-theme.sh"
bash "$THEME_DIR/hooks/fastfetch-theme.sh"

echo "Done. tmux and fastfetch now follow the current Omarchy theme."
