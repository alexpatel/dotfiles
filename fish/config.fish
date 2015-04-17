set fish_greeting ""

alias bd="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/docs"
alias c="cd ~/code"
alias dl="cd ~/downloads"
alias ls="ls --indicator-style=classify --group-directories-first --color"

# git
alias g="git"
alias gl="git lg"
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gco="git checkout"
alias gpush="git push"
alias gpull="git pull"

# CVS
set -gx CVS_RSH ssh 
set -gx CVSROOT $HOME/Code/gnu/www

# vagrant
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vr="vagrant reload"
alias vdestroy="vagrant destroy"

alias manage="bash vagrant_manage.sh"

# python
alias python="python2"

# os161
set CS161 $HOME/docs/cs161
set PATH $CS161/cs161/sys161/bin $CS161/cs161/tools/bin $PATH
