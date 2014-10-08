set fish_greeting ""

# Run Haskell Cabal programs 
set PATH $PATH ~/.cabal/bin

alias ..="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/Docs/2014-2015"
alias c="cd ~/Code"
alias dl="cd ~/Downloads"
alias ls="ls --group-directories-first --color"
alias cl="clear"

alias v="vim"
alias python="python2"

alias cc="cd ~/Code/crimsononline"
alias crimson="cd ~/Code/crimsononline; and source ~/.virtualenvs/crimson/bin/activate.fish; and vagrant up "

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

# to connect to my external monitor
function monitor 
        xrandr --output HDMI1 --auto --above eDP1
        xrandr --output HDMI1 --rotate normal 
end
