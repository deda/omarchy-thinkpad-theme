# Omarchy IBM Theme

A professional, high-contrast dark colorscheme for **Omarchy Linux**, inspired by
classic IBM / ThinkPad design: near-black surfaces, neutral greys and TrackPoint red.

> **Requires Omarchy Quattro (4.x).** The theme uses Quattro's semantic
> `colors.toml`, Lua Hyprland config and Omarchy shell overrides. For Omarchy 3.x,
> use the commit before `Support Omarchy Quattro (4.x)`.

---

## ✨ Preview
![Preview](preview.png)

## 📦 Install

```bash
omarchy theme install https://github.com/deda/omarchy-thinkpad-theme
omarchy theme set thinkpad
```

A theme installed with `omarchy theme install` may not ship Lua, so Omarchy skips
`hyprland.lua`. The red window border still comes from `colors.toml`; for the
theme's gaps, rounding and groupbar too, clone the repo and symlink it instead:

```bash
git clone https://github.com/deda/omarchy-thinkpad-theme ~/repos/omarchy-thinkpad-theme
ln -s ~/repos/omarchy-thinkpad-theme ~/.config/omarchy/themes/thinkpad
omarchy theme set thinkpad
```

Then run the setup script once. Omarchy doesn't theme tmux or fastfetch itself, so
this installs two theme-set hooks and points tmux at the theme's colors:

```bash
~/.config/omarchy/themes/thinkpad/setup.sh
```

It's safe to re-run, and it doesn't lock tmux or fastfetch to this theme: with
any theme that doesn't ship a `tmux.conf` or `fastfetch.jsonc`, they fall back to
their usual configs.

## 🎨 What's included

| File | Purpose |
|------|---------|
| `colors.toml` | Semantic Quattro palette. Omarchy generates alacritty, kitty, ghostty, foot, Neovim, Obsidian, VS Code, Helix and more from it |
| `hyprland.lua` | Gaps, rounding, shadows, red `#8b0000` borders and a minimal indicator-style groupbar |
| `shell.notifications.toml` | Notifications with a dark red border and red countdown |
| `shell.lock.toml` | Translucent lock-screen field with a red ring (dark red idle, TrackPoint red while typing, light red on a wrong password) |
| `shell.launcher.toml`, `shell.menu.toml` | Muted borders, lavender selection |
| `btop.theme` | Red-boxed btop |
| `tmux.conf` | Red session pill and current window, grey inactive windows, lavender prefix and yellow copy-mode indicators, dark red active pane border |
| `fastfetch.jsonc` | Omarchy's fastfetch layout with a red logo and hardware keys |
| `setup.sh`, `hooks/` | One-time setup that wires up `tmux.conf` and `fastfetch.jsonc` |
| `hyprland-preview-share-picker.css`, `warp.yaml`, `icons.theme`, `chromium.theme`, `keyboard.rgb` | App extras |

### Palette

| Role | Color | Role | Color |
|------|-------|------|-------|
| background | `#050709` | foreground | `#ffffff` |
| accent / blue | `#727272` | muted | `#4a4a4a` |
| red | `#da1e28` | bright red | `#fa4d56` |
| green | `#66a773` | bright green | `#a3cfa8` |
| yellow | `#b4b47b` | bright yellow | `#dadaba` |
| magenta | `#8686ba` | bright magenta | `#afafd2` |
| cyan | `#a360a3` | bright cyan | `#c296c2` |
| window border | `#8b0000` | orange | `#d27a46` |

### Changes from the pre-Quattro version

- `colors.toml` moved from `color0`–`color15` to Quattro's semantic keys.
- Red and green are no longer swapped, so errors and alerts (lock screen, polkit,
  bar) render red and terminal ANSI colors are conventional.
- `hyprland.conf` became `hyprland.lua`.
- Waybar, mako, walker, wofi, swayosd and hyprlock files were removed (Quattro's
  shell replaces those apps); their styling lives on in the `shell.*.toml` overrides.
- Hand-written terminal, Neovim and Obsidian configs were removed in favor of
  Omarchy's generated ones.

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
