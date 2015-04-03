#!/bin/bash

declare -A map=(
	["i3config"]="$HOME/.i3/config"
	["i3status.conf"]="$HOME/.i3status.conf"
	["vimperatorrc"]="$HOME/.vimperatorrc"
	["vimrc"]="$HOME/.vimrc"
	["vim"]="$HOME/.vim"
	["xbindkeysrc"]="$HOME/.xbindkeysrc"
	["xinitrc"]="$HOME/.xinitrc"
	["Xresources"]="$HOME/.Xresources"
	["fish"]="$HOME/.config/fish"
)

for f in "${!map[@]}"; do ln -s "$(pwd)/$f" ${map[$f]}; done
