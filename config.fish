set fish_greeting ""

alias python="python2"

alias ..="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/Docs"
alias c="cd ~/Code"
alias dl="cd ~/Downloads"
alias ls="ls --group-directories-first --color"
alias cc="cd ~/Code/crimsononline"

# wifi driver is spotty
alias res="sudo systemctl restart NetworkManager"

# sync crimsononline with dev server
alias sync="rsync -avz ~/Code/crimsononline alex@104.236.54.59:/home/alex"

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

# activate virtualenv
function activate
        source ~/.venvs/$argv/bin/activate.fish
end
