set fish_greeting ""

# Run Haskell Cabal programs 
set PATH $PATH ~/.cabal/bin

alias ..="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/Docs/2014-2015"
alias c="cd ~/Code"
alias dl="cd ~/Downloads"
alias cc="cd ~/Code/crimsononline"
alias ls="ls -1 --group-directories-first --color"
alias cl="clear"
alias b="cd ~/.Blog"

alias v="vim"
alias python="python2"

# Git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit -am"
alias gpush="git push"
alias gpull="git pull"


# Vagrant
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vr="vagrant reload"
alias manage="bash vagrant_manage.sh"
alias shell="bash vagrant_manage.sh shell_plus"
