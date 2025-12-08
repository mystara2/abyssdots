#!/usr/bin/env bash

#############
# Functions #
#############

setup_symlinks() {
    echo "[AbyssDots] Setting up symlinks...."
    ln -s ~/dev/github/mystara/abyssdots/.config/systemd/user/waybar.service ~/.config/systemd/user/waybar.service
    ln -s ~/dev/github/mystara/abyssdots/.config/systemd/user/waybar2.service ~/.config/systemd/user/waybar2.service

    systemctl --user enable --now waybar
    systemctl --user enable --now waybar2

    ln -s ~/dev/github/mystara/abyssdots/.config/dunst ~/.config/dunst
    ln -s ~/dev/github/mystara/abyssdots/.config/fastfetch ~/.config/fastfetch
    ln -s ~/dev/github/mystara/abyssdots/.config/wal ~/.config/wal
    ln -s ~/dev/github/mystara/abyssdots/.config/wofi ~/.config/wofi
    ln -s ~/dev/github/mystara/abyssdots/.config/waybar ~/.config/waybar
    ln -s ~/dev/github/mystara/abyssdots/.config/waypaper ~/.config/waypaper
    ln -s ~/dev/github/mystara/abyssdots/.config/wlogout ~/.config/wlogout
    ln -s ~/dev/github/mystara/abyssdots/.config/hypr/configs ~/.config/hypr/configs
    ln -s ~/dev/github/mystara/abyssdots/.config/hypr/hyprlock.conf ~/.config/hypr/hyprlock.conf
    ln -s ~/dev/github/mystara/abyssdots/.config/hypr/hyprpaper.conf ~/.config/hypr/hyprpaper.conf
    ln -s ~/dev/github/mystara/abyssdots/.config/hypr/hyprqt6engine.conf ~/.config/hypr/hyprqt6engine.conf
    ln -s ~/dev/github/mystara/abyssdots/scripts ~/scripts
    echo "[AbyssDots] Symlink setup complete!"
}

#################
# Actual Script #
#################

echo "[AbyssDots] Installing Dependenices for: Abyss Dotfiles by Mystara"
echo "[AbyssDots] Installing Pacman available packages"

sudo pacman -Syu waybar neovim wofi hyprpaper hyprlock qt6ct lsd bat zsh zsh-completions

echo "[AbyssDots] Installed Pacman available packages!"

echo "[AbyssDots] Setup paru then installing AUR available packages"

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

paru -S waypaper python-pywal16 wlogout python-spicetify

echo "[AbyssDots] Installed AUR available packages!"


echo "[AbyssDots] Setting up git repos...."

mkdir -vp /dev/github/mystara/abyssdots
read -p "Enter your git username: " gituser
read -p "Enter your git email: " gitemail

git config --global user.email "$gitemail"
git config --global user.name "$gituser"

git clone https://github.com/mystara2/abyssdots /dev/github/mystara/abyssdots

echo "[AbyssDots] Git repos setup complete!"


read -p "Setup Symlinks: Y/n " symlinksetup

if [[ "symlinksetup" == "Y" || "symlinksetup" == "y" || -z  "$symlinksetup" ]]; then
    setup_symlinks
else
    echo "Skipping symlink creation"
fi

echo "To be continued....Setup of Abyss dotfiles by mystara is complete!"