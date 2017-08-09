#!/usr/bin/env python

import os

conf_map = {
	"vimperatorrc": "$HOME/.vimperatorrc",
	"vimrc": "$HOME/.vimrc",
	"vim": "$HOME/.vim",
	"bashrc": "$HOME/.bashrc",
	"bash_aliases": "$HOME/.bash_aliases",
	"tmux.conf": "$HOME/.tmux.conf",
	"hgrc": "$HOME/.hgrc",
	"hgignore": "$HOME/.hgignore",
}

for source, dest in conf_map.iteritems():
	os.system('ln -s "$(pwd)/{}" {}'.format(source, dest))
