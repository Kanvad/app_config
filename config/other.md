## Other config

### install packages (Arch Linux)
```zsh
chmod +x install_packages.sh
./install_packages.sh
```

### oh-my-zsh [link](https://ohmyz.sh/#install)
```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### oh-my-zsh plugins
```zsh
plugins=(
	git
	history
	sudo
	emoji
	copypath
	zsh-autosuggestions
	zsh-syntax-highlighting
)
```

### hyprpanel [link](https://hyprpanel.com/getting_started/installation.html#arch-1)
```zsh
sudo pacman -S --needed wireplumber libgtop bluez bluez-utils btop networkmanager dart-sass wl-clipboard brightnessctl swww python upower pacman-contrib power-profiles-daemon gvfs wf-recorder
```
---
```zsh
yay -S --needed aylurs-gtk-shell-git grimblast-git hyprpicker matugen-bin python-gpustat hyprsunset-git
```

### yazi [link](https://yazi-rs.github.io/docs/installation/#arch)
```zsh
sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide imagemagick
yay -S resvg
```