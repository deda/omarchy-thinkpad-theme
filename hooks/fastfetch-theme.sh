#!/bin/bash

# Omarchy theme-set hook: use the current theme's fastfetch.jsonc when it ships
# one; otherwise fall back to Omarchy's /etc/fastfetch/config.jsonc. Never
# touches a hand-written ~/.config/fastfetch/config.jsonc, only the symlink
# this hook creates.

THEME_FASTFETCH="$HOME/.local/state/omarchy/current/theme/fastfetch.jsonc"
USER_FASTFETCH="$HOME/.config/fastfetch/config.jsonc"

if [[ -f $THEME_FASTFETCH ]]; then
  [[ -e $USER_FASTFETCH && ! -L $USER_FASTFETCH ]] && exit 0
  mkdir -p "${USER_FASTFETCH%/*}"
  ln -nsf "$THEME_FASTFETCH" "$USER_FASTFETCH"
elif [[ -L $USER_FASTFETCH && $(readlink "$USER_FASTFETCH") == "$THEME_FASTFETCH" ]]; then
  rm "$USER_FASTFETCH"
fi
