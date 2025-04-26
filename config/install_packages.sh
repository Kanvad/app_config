#!/bin/bash

# Packages
official_packages=(
    "neovim"
    "zsh"
    "htop"
    "curl"
    "wget"
    "python"
    "kitty"
    "neofetch"
    "rofi-wayland"
    "fastfetch"
    "fcitx5"
    "fcitx5-configtool"
    "pipewire"
    "pipewire-pulse"
    "pipewire-alsa"
    "pipewire-jack"
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

)

aur_packages=(
    "google-chrome"
    "visual-studio-code-bin"
    "hyprland-git"
    "ags-hyprpanel-git"
    "hyprcursor-git"
    "hyprshot"
    "hyprsunset"
    "wlogout"
    "hyprlock"
    "ttf-meslo-nerd-font-powerlevel10k"
    "zen-browser-bin"
    "ttf-ms-fonts"
    "vlc-git"
    "catppuccin-cursors-mocha"
)

# Update pacman
sudo pacman -Syu

# Install packages
sudo pacman -S --noconfirm --needed "${official_packages[@]}"

yay -S --noconfirm --needed "${aur_packages[@]}"
