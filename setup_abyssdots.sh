#!/usr/bin/env bash

setup_symlinks() {
    echo "[Abyssdots] Setting up symlinks...."
    # Systemd Services
    
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/systemd/user/waybar.service" "$HOME/.config/systemd/user/waybar.service"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/systemd/user/waybar2.service" "$HOME/.config/systemd/user/waybar2.service"
    systemctl --user enable --now waybar
    systemctl --user enable --now waybar2

    # Configs

    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/dunst" "$HOME/.config/dunst"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/fastfetch" "$HOME/.config/fastfetch"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/wal" "$HOME/.config/wal"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/wofi" "$HOME/.config/wofi"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/waybar" "$HOME/.config/waybar"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/waypaper" "$HOME/.config/waypaper"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/wlogout" "$HOME/.config/wlogout"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/hypr/configs" "$HOME/.config/hypr/configs"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/hypr/hyprlock.conf" "$HOME/.config/hypr/hyprlock.conf"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/hypr/hyprpaper.conf" "$HOME/.config/hypr/hyprpaper.conf"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.config/hypr/hyprqt6engine.conf" "$HOME/.config/hypr/hyprqt6engine.conf"

    # Other
    ln -sf "$HOME/dev/github/mystara/Abyssdots/scripts" "$HOME/scripts"
    ln -sf "$HOME/dev/github/mystara/Abyssdots/.zsh" "$HOME/.zsh"
    echo "[Abyssdots] Symlink setup complete!"
}

copy_configs() {
    echo "[Abyssdots] Copying configs...."

    # Systemd services
    mkdir -vp "$HOME/.config/systemd/user"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/systemd/user/waybar.service" "$HOME/.config/systemd/user/waybar.service"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/systemd/user/waybar2.service" "$HOME/.config/systemd/user/waybar2.service"
    systemctl --user enable --now waybar
    systemctl --user enable --now waybar2

    rm -rf ~/.config/hypr/
    mkdir -vp ~/.config/hypr/pconfigs
    touch ~/.config/hypr/pconfigs/monitors.conf
    # Configs
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/dunst" "$HOME/.config/dunst"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/fastfetch" "$HOME/.config/fastfetch"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/wal" "$HOME/.config/wal"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/wofi" "$HOME/.config/wofi"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/waybar" "$HOME/.config/waybar"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/waypaper" "$HOME/.config/waypaper"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/wlogout" "$HOME/.config/wlogout"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/hypr/configs" "$HOME/.config/hypr/configs"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/hypr/hyprlock.conf" "$HOME/.config/hypr/hyprlock.conf"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/hypr/hyprpaper.conf" "$HOME/.config/hypr/hyprpaper.conf"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.config/hypr/hyprqt6engine.conf" "$HOME/.config/hypr/hyprqt6engine.conf"

    # Other
    cp -r "$HOME/dev/github/mystara/Abyssdots/scripts" "$HOME/scripts"
    cp -r "$HOME/dev/github/mystara/Abyssdots/.zsh" "$HOME/.zsh"

    echo "[Abyssdots] Copy complete!"
}


echo "[Abyssdots] Installing Dependenices for: Abyss Dotfiles by Mystara"
echo "[Abyssdots] Installing Pacman available packages"

sudo pacman -Syu waybar neovim wofi hyprpaper hyprlock qt6ct lsd bat zsh zsh-completions git

echo "[Abyssdots] Installed Pacman available packages!"
echo "[Abyssdots] Setup paru then installing AUR available packages"

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S waypaper python-pywal16 wlogout python-spicetify

echo "[Abyssdots] Installed AUR available packages!"
echo "[Abyssdots] Setting up git repos...."

mkdir -vp "$HOME/dev/github/mystara/Abyssdots"

read -p "Enter your git username: " gituser
read -p "Enter your git email: " gitemail

git config --global user.email "$gitemail"
git config --global user.name "$gituser"

if [[ ! -f $HOME/.netrc ]]; then
    echo "" > "$HOME/.netrc"
fi

git clone https://github.com/mystara2/Abyssdots "$HOME/dev/github/mystara/Abyssdots"

echo "[Abyssdots] Git repos setup complete!"
read -p "[Abyssdots] Setup Symlinks: Y/n " symlinksetup

if [[ "${symlinksetup,,}" == "y" || -z "$symlinksetup" ]]; then
    setup_symlinks
else
    echo "[Abyssdots] Skipping symlink creation, copying files instead"
    copy_configs
fi
echo "[Abyssdots] Setting up the shell..."

chsh -s "$(which zsh)"
cp "$HOME/dev/github/mystara/Abyssdots/.zshrc" "$HOME/.zshrc"


echo "[Abyssdots] Shell Setup complete!"
echo "To be continued....Setup of Abyss dotfiles by mystara is complete!"
