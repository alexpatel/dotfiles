set fish_greeting ""

alias bd="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/Documents"
alias c="cd ~/Code"
alias df="cd ~/Code/dotfiles"
alias dl="cd ~/Downloads"
# alias ls="ls --indicator-style=classify --group-directories-first --color"

# git
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gco="git checkout"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --all"
alias gps="git push"
alias gpl="git pull"
alias gra="git rebase --abort"
alias grb="git rebase -i"
alias grc="git rebase --continue"
alias gs="git status"

# CVS
set -gx CVS_RSH ssh 
set -gx CVSROOT $HOME/Code/gnu/www

# vagrant
alias vu="vagrant up"
alias vh="vagrant halt"
alias vs="vagrant status"
alias vssh="vagrant ssh"
alias vr="vagrant reload"
alias vds="vagrant destroy"
alias vrl="vagrant reload"

alias manage="bash vagrant_manage.sh"

# python
#alias python="python2"

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
