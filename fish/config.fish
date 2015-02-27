set fish_greeting ""

alias bd="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/Docs"
alias c="cd ~/Code"
alias dl="cd ~/Downloads"

# ls
alias ls="ls --indicator-style=classify --group-directories-first --color"

# wifi driver is spotty
alias res="sudo systemctl restart NetworkManager"

# git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit -am"
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

# python
alias python="python2"

# add cabal progs to path
set PATH ~/.cabal/bin $PATH
