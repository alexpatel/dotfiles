set fish_greeting ""

alias bd="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/docs"
alias c="cd ~/code"
alias df="cd ~/code/dotfiles"
alias dl="cd ~/downloads"
# alias ls="ls --indicator-style=classify --group-directories-first --color"

# git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --all"
alias gc="git commit"
alias gd="git diff"
alias gco="git checkout"
alias gps="git push"
alias gpl="git pull"
alias grb="git rebase -i"
alias grc="git rebase --continue"
alias gra="git rebase --abort"

# CVS
set -gx CVS_RSH ssh 
set -gx CVSROOT $HOME/Code/gnu/www

# vagrant
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vr="vagrant reload"
alias vdestroy="vagrant destroy"
alias vreload="vagrant reload"

alias manage="bash vagrant_manage.sh"

# python
alias python="python2"

# os161
set CS161 $HOME/docs/cs161
set PATH $CS161/cs161/sys161/bin $CS161/cs161/tools/bin $PATH

set PATH /usr/local/bin $PATH

# Start X at login
if status --is-login
	if test -z "$DISPLAY" -a $XDG_VTNR = 1
		exec startx -- -keeptty >~/.xorg.log ^&1
	end
end
