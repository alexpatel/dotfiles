alias ..="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/Docs"
alias c="cd ~/Code"
alias dl="cd ~/Downloads"
alias ls="ls --group-directories-first --color"

# wifi driver is spotty
alias res="sudo systemctl restart NetworkManager"

# Alsamixer
alias mute="amixer set Master mute"
alias unmute="amixer set Master unmute"

# Git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit -am"
alias gpush="git push"
alias gpull="git pull"

# CVS
set -gx CVS_RSH ssh 
set -gx CVSROOT $HOME/Code/gnu/www

# Vagrant
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vr="vagrant reload"
alias vdestroy="vagrant destroy"

# Languages 
## Python
alias python="python2"

## Haskell
set PATH ~/.cabal/bin $PATH

## Fish
set fish_greeting ""
