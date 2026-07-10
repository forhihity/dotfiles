# dotfiles

My personal configuration files for Arch Linux with Niri Wayland compositor.

## Structure

```
dotfiles/
├── fastfetch/
│   └── config.jsonc     # config of fastfetch
├── fish/
│   └── config.fish      # config of shell  
├── kitty/
│   └── kitty.conf       # config of terminal emulator
└── niri/
    ├── config.kdl       # config of wayland compositor 
    ├── niri-layout.cpp  # source code
    └── niri-layout      # compiled binary
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
