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

### hyprpanel
[All dependencies](https://hyprpanel.com/getting_started/installation.html#arch-1)<br>
pacman
```zsh
sudo pacman -S --needed wireplumber libgtop bluez bluez-utils btop networkmanager dart-sass wl-clipboard brightnessctl swww python upower pacman-contrib power-profiles-daemon gvfs wf-recorder
```
AUR
```zsh
yay -S --needed aylurs-gtk-shell-git grimblast-git hyprpicker matugen-bin python-gpustat hyprsunset-git
```

