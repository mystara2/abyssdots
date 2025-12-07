#!/usr/bin/env bash

wall="$1"
ext="${wall##*.}"

mkdir -p ~/wallpapers/
cp "$wall" ~/wallpapers/current."$ext"
cp "$wall" ~/dotfiles/wallpapers/current."$ext"
