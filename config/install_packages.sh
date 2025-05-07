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
    "nwg-look"
    "hyprland"
    "hyprcursor"
    "hyprsunset"
    "hyprlock"
)

aur_packages=(
    "google-chrome"
    "visual-studio-code-bin"
    "hyprshot"
    "wlogout"
    "wl-gammarelay"
    "ttf-meslo-nerd-font-powerlevel10k"
    "zen-browser-bin"
    "ttf-ms-fonts"
    "vlc-git"
    "catppuccin-cursors-mocha"
    "catppuccin-gtk-theme-mocha"
)

# Update pacman
sudo pacman -Syu

# Install packages
sudo pacman -S --needed "${official_packages[@]}"

yay -S --needed "${aur_packages[@]}"
