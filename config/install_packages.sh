#!/bin/bash

# Packages
official_packages=(
    "neovim"
    "zsh"
    "htop"
    "curl"
    "zip"
    "unzip"
    "wget"
    "python"
    "kitty"
    "neofetch"
    "rofi-wayland"
    "fastfetch"
    "fcitx5"
    "fcitx5-configtool"
    "pipewire"
    "nerd-fonts"
    "firefox"
    "swww"
    "swaync"
    "rofi-emoji"
    "noto-fonts-cjk"
    "noto-fonts-emoji"
    "hyprpaper"
    "spotify-launcher"
    "thunar"
    "thunar-volman"
    "tumbler"
    "nwg-look"
    "hyprland"
    "hyprcursor"
    "hyprsunset"
    "hyprlock"
    "wtype"
    "vlc"
)

aur_packages=(
    "google-chrome"
    "visual-studio-code-bin"
    "hyprshot"
    "wlogout"
    "wl-gammarelay"
    "ttf-meslo-nerd-font-powerlevel10k"
    "ttf-ms-fonts"
    "catppuccin-cursors-mocha"
    "catppuccin-gtk-theme-mocha"
)

# Update pacman
sudo pacman -Syu

# Install yay
if ! command -v yay &> /dev/null; then
    sudo pacman -S --needed base-devel git || exit 1
    git clone https://aur.archlinux.org/yay.git || exit 1
    cd yay && makepkg -si || exit 1
    cd .. && rm -rf yay
fi

# Install packages
for pkg in "${official_packages[@]}"; do
    if ! sudo pacman -S --noconfirm --needed "$pkg"; then
        echo "error pakage $pkg"
    fi
done

for pkg in "${aur_packages[@]}"; do
    if ! yay -S --noconfirm --needed "$pkg"; then
        echo "error aur pakage $pkg"
    fi
done

echo $'\n Done 😺'
