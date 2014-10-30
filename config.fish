set fish_greeting ""

alias ..="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/Docs/2014-2015"
alias c="cd ~/Code"
alias dl="cd ~/Downloads"
alias ls="ls -a --group-directories-first --color"
alias cl="clear"

# The wifi driver is spotty
alias res="sudo systemctl restart NetworkManager"

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
alias vdestroy="vagrant destroy"
alias manage="bash vagrant_manage.sh"
alias shell="bash vagrant_manage.sh shell_plus"

function activate
        source ~/.venvs/$argv/bin/activate.fish
end
