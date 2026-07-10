# dotfiles

My personal configuration files for Arch Linux with Niri Wayland compositor.

## Structure

```
dotfiles/
├── fastfetch/
│   └── config.jsonc          # fastfetch config
├── fish/
│   └── config.fish           # shell config
├── kitty/
│   └── kitty.conf            # terminal emulator config
├── niri/
│   ├── config.kdl            # wayland compositor config
│   ├── niri-layout           # compiled binary
│   └── niri-layout.cpp       # auto layout switcher source
└── README.md
```

## niri-layout

Automatically switches keyboard layout when focusing kitty terminal and back.

Written with AI assistance (Claude) — my first useful C++ program.

- Focuses kitty → switches to English
- Leaves kitty → restores Russian (only if it was active before)

### Build

```bash
g++ -std=c++17 niri-layout.cpp -o niri-layout
```

### Dependencies

```bash
sudo pacman -S nlohmann-json jq
```

### Autostart

In `niri/config.kdl`:
```
spawn-at-startup "/path/to/niri-layout"
```
## Wallpapers

My wallpapers are [here](https://golnk.ru/YGARz).
