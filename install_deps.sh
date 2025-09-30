#!/usr/bin/env bash
echo "Installing Dependenices for: Abyss Dotfiles by Mystara"
echo "Installing Pacman available packages"

sudo pacman -Syu waybar neovim wofi

echo "Installed Pacman available packages!"
echo "installing AUR available packages"

paru -S waypaper python-pywal16 wlogout

echo "Installed AUR available packages!"
