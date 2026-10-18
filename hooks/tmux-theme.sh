#!/bin/bash

# Omarchy theme-set hook: restyle running tmux sessions for the new theme.
# ~/.config/tmux/tmux.conf sources the current theme's tmux.conf (if any) last,
# so re-sourcing it applies the new theme or falls back to its own defaults.

tmux list-sessions >/dev/null 2>&1 || exit 0

# Clear options a theme may style that a stock tmux.conf doesn't set, so a
# theme without a tmux.conf doesn't inherit them from the previous one.
for option in window-status-activity-style window-status-bell-style \
  display-panes-colour display-panes-active-colour \
  copy-mode-match-style copy-mode-current-match-style popup-border-style; do
  tmux set-option -gu "$option" 2>/dev/null || true
done

tmux source-file "$HOME/.config/tmux/tmux.conf" >/dev/null 2>&1 || true
