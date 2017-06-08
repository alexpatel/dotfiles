#!/bin/bash

# install configuration files to desktop

declare -A map=(
	["vimperatorrc"]="$HOME/.vimperatorrc"
	["vimrc"]="$HOME/.vimrc"
	["vim"]="$HOME/.vim"
	["bashrc"]="$HOME/.bashrc"
	["bash_aliases"]="$HOME/.bash_aliases"
	["tmux.conf"]="$HOME/.tmux.conf"
)

for f in "${!map[@]}"
do 
    ln -s "$(pwd)/$f" ${map[$f]}
done
