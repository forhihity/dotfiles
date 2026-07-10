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

# Dependencies

## Arch

```bash
# Core
sudo pacman -S niri kitty fish yazi zoxide lsd

# Fonts
sudo pacman -S ttf-fira-code

# Niri extras
sudo pacman -S niri xdg-desktop-portal-gnome qt6ct

# Media
sudo pacman -S playerctl celluloid eog

# Yazi extras
sudo pacman -S nvim

# niri-layout
sudo pacman -S nlohmann-json jq

# AUR
yay -S noctalia-shell qs obs-cmd
```

## Debian/Ubuntu

```bash
# Core
sudo apt install niri kitty fish yazi zoxide

# lsd (нет в apt, через cargo)
cargo install lsd

# Fonts
sudo apt install fonts-firacode

# Niri extras
sudo apt install xdg-desktop-portal qt6ct

# Media
sudo apt install playerctl celluloid eog

# niri-layout
sudo apt install nlohmann-json3-dev jq
```

## Fedora

```bash
# Core
sudo dnf install niri kitty fish zoxide

# lsd
cargo install lsd

# yazi (нет в dnf, через cargo)
cargo install yazi-fm

# Fonts
sudo dnf install fira-code-fonts

# Niri extras
sudo dnf install xdg-desktop-portal qt6ct

# Media
sudo dnf install playerctl celluloid eog

# niri-layout
sudo dnf install nlohmann-json-devel jq
```# Dependencies

## Arch

```bash
# Core
sudo pacman -S niri kitty fish yazi zoxide lsd

# Fonts
sudo pacman -S ttf-fira-code

# Niri extras
sudo pacman -S niri xdg-desktop-portal-gnome qt6ct

# Media
sudo pacman -S playerctl celluloid eog

# Yazi extras
sudo pacman -S nvim

# niri-layout
sudo pacman -S nlohmann-json jq

# AUR
yay -S noctalia-shell qs obs-cmd
```

## Debian/Ubuntu

```bash
# Core
sudo apt install niri kitty fish yazi zoxide

# lsd (нет в apt, через cargo)
cargo install lsd

# Fonts
sudo apt install fonts-firacode

# Niri extras
sudo apt install xdg-desktop-portal qt6ct

# Media
sudo apt install playerctl celluloid eog

# niri-layout
sudo apt install nlohmann-json3-dev jq
```

## Fedora

```bash
# Core
sudo dnf install niri kitty fish zoxide

# lsd
cargo install lsd

# yazi (нет в dnf, через cargo)
cargo install yazi-fm

# Fonts
sudo dnf install fira-code-fonts

# Niri extras
sudo dnf install xdg-desktop-portal qt6ct

# Media
sudo dnf install playerctl celluloid eog

# niri-layout
sudo dnf install nlohmann-json-devel jq
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

![preview](preview.png)
