#!/usr/bin/env python

import os

conf_map = {
	"vimperatorrc": "$HOME/.vimperatorrc",
	"vimrc": "$HOME/.vimrc",
	"vim": "$HOME/.vim",
	"bashrc": "$HOME/.bashrc",
	"bash_aliases": "$HOME/.bash_aliases",
	"gitconfig": "$HOME/.gitconfig",
	"gitignore_global": "$HOME/.gitignore_global",
	"hgrc": "$HOME/.hgrc",
	"hgignore": "$HOME/.hgignore",
	"tmux.conf": "$HOME/.tmux.conf",
}

for source, dest in conf_map.iteritems():
	os.system('rm -rf {}'.format(dest))
	os.system('ln -s "$(pwd)/{}" {}'.format(source, dest))
