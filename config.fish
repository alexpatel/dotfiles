set fish_greeting ""

# Run Haskell Cabal programs 
set PATH $PATH ~/.cabal/bin

alias ..="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/Dropbox"
alias c="cd ~/Code"
alias dl="cd ~/Downloads"
alias rmd="rm -rf"
alias ls="ls -1 --group-directories-first --color"
alias cl="clear"

alias v="vim"
alias p="python"

# Git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gc="git commit -am"
alias gp="git push"

# Vagrant
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vdestroy="vagrant destroy"
alias vssh="vagrant ssh"

# List running vagrant virtual machines
function vls
        ps aux | grep -i [v]mware-vmx | grep -oE '([^/]+)/.vagrant' | cut -d/ -f1 
end
