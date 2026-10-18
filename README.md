# Omarchy IBM Theme

A professional, high-contrast dark colorscheme for **Omarchy Linux**, inspired by the classic IBM design and optimized for the **Hyprland** compositor.

---

## ✨ Preview
![Preview](preview.png)

![Preview2](preview2.png)

## 🖥️ Optional: ThinkPad ASCII Logo (Fastfetch)

If you want your terminal to display a ThinkPad-style ASCII logo using `fastfetch`, you can use the following:

### 1. Horizontal logo (Fastfetch)
Save this to:
`~/.config/omarchy/branding/about.txt`

```bash

████████████████
   █▙▄▄▄▄▄▄▄▄▄▟█
    ▀▀▀▀▀▀▀▀▀▀▀
   ▄████████████
   █▙▄▄ █▙▄▄▄▄▟█
    ▀▀▀  ▀▀▀▀▀▀
▄███████▄
█▙▄▄▄▄▄▟█▄▄▄▄▄▄▄
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
   █████▄ ▄█████
▄▄▄▄▄▄▄▄▟█▙▄▄▄▄▄
▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
   ▄████████████
   █▙▄▄▄▄▄▄▄▄▄▄▄
   ▀▀▀▀▀▀▀▀▀▀▀▀▀
▓▓ █████████████
    ▄▄▄▄▄▄▄▄▄▄▄▄
   █▛▀▀▀▀▀▀▀▀▀▀▀
████████████████
▄▄
██▄▄▄▄▄▄▄▄▄▄▄▄▄▄
██▀▀▀▀▀▀▀▀▀▀▀▀▀▀
▀▀   
```
### 2. Screensaver logo:
Save this to:
`~/.config/omarchy/branding/screensaver.txt`
```bash
             ▄▄
██████ ██   ▝██▘      ██    ████▄          ██
  ██   ██▗▄▖ ▄▄ ▄▄▗▄▖ ██ ▄▄ ██ ██  ▄▄▄  ▗▄▖██
  ██   ██▛██ ██ ██▛██ ██ ██ ██ ██ ██▀██ ██▜██
  ██   ██ ██ ██ ██ ██ ██▐█▌ ██▄██ ▀▀▗██ ██ ██
  ██   ██ ██ ██ ██ ██ ████  ██▀▀  ▗█▛██ ██ ██
  ██   ██ ██ ██ ██ ██ ██▐█▌ ██    ██ ██ ██ ██
  ██   ██ ██ ██ ██ ██ ██ ██ ██    ██▟██ ██▟██
  ▀▀   ▀▀ ▀▀ ▀▀ ▀▀ ▀▀ ▀▀ ▀▀ ▀▀    ▝▀▘▀▀ ▝▀▘▀
```

## 🪟 Optional: tmux

Omarchy doesn't theme the tmux status bar, so this theme ships a `tmux.conf`.
Load it at the end of `~/.config/tmux/tmux.conf`:

```tmux
source-file -q ~/.local/state/omarchy/current/theme/tmux.conf
```

To restyle running sessions whenever you switch themes, install a theme-set hook:

```bash
cat > /tmp/tmux-theme.sh <<'HOOK'
#!/bin/bash
tmux list-sessions >/dev/null 2>&1 || exit 0
tmux source-file "$HOME/.config/tmux/tmux.conf" >/dev/null 2>&1 || true
HOOK
omarchy hook install theme-set /tmp/tmux-theme.sh
```
