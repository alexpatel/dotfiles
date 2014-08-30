set fish_greeting ""

# Run Haskell Cabal programs 
set PATH $PATH ~/.cabal/bin

alias ..="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/Dropbox"
alias c="cd ~/Code"
alias dl="cd ~/Downloads"
alias rmd="rm -rfI"
alias ls="ls -1 --group-directories-first --color"
alias cl="clear"

alias v="vim"

# Git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit -am"
alias gp="git push"

# Vagrant
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vr="vagrant reload"
alias manage="bash vagrant_manage.sh"
