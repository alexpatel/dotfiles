# filesystem movement
alias bd="cd .."
alias "..."="cd ../.."
alias cdl="cd -"
alias d="cd ~/Dropbox/2016-2017"
alias c="cd ~/Code"
alias df="cd ~/Code/dotfiles"
alias dl="cd ~/Downloads"
alias cs="cd ~/Dropbox/2016-2017/cs161"

alias v="vim"

# source bash profile
alias src="source ~/.bashrc"

# list block devices
alias lsdev="sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL"

# list large files
function lslarge {
    sudo find / -type f -size +100000k -exec ls -lh {} \; 2>/dev/null |\
        awk '{ print $5 "  " $9 }'
}


# Git
function gps { 
    git push origin `git rev-parse --abbrev-ref HEAD`
}

alias g="git"
alias ga="git add"
alias gcb="git rev-parse --abbrev-ref HEAD"
alias gb="git branch"
alias gc="git commit --verbose"
alias gco="git checkout"
alias gf="git fetch --all"
alias gfa="git fetch --all"
alias gl="git log --oneline"
alias gll="git log --abbrev-commit --decorate --date=relative --all --stat"
alias gpl="git pull"
alias grba="git rebase --abort"
alias grb="git rebase -i"
alias grbc="git rebase --continue"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias grm="git remove"
alias grv="git remote -v"
alias gus="git remove --cached"
alias gs="git status"
alias gst="git stash"
alias gstd="git stash drop"
alias gsta="git stash apply"
alias gstl="git stash list"

# Vagrant
alias vu="vagrant up"
alias vh="vagrant halt"
alias vs="vagrant status"
alias vssh="vagrant ssh"
alias vr="vagrant reload"
alias vd="vagrant destroy"
alias vrl="vagrant reload"
alias vdu="vagrant destroy && vagrant up"

# Python
#alias python="python2"
alias pyc="find . -name '*.pyc' -delete"
alias activate="source venv/bin/activate"

# Docker
alias dk="docker"
alias dkb="docker build --rm"
alias dkr="docker run"
alias dkcl_img='docker rmi $(docker images -a --filter=dangling=true -q)'
alias dkcl_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcb="docker-compose build"
alias dps="docker ps -a -q"

# stop and remove all containers/images
function dkrm {
    ps=$(docker ps -a -q)
    docker stop $ps
    docker rm $ps
    docker rmi -f $(docker images -q)
}

# Harvard-PRINCESS
alias sshbf="ssh ahp@nomnomnom.seas.harvard.edu"
alias syncbf="rsync -avz ~/Dropbox/2016-2017/princess/Guppy ahp@nomnomnom.seas.harvard.edu:~/"
alias p="cd ~/Dropbox/2016-2017/princess"
alias sshmnch="ssh ahp@munchmunch.seas.harvard.edu"

PYTHONPATH="/Users/apatel/.smt_solvers/python-bindings-2.7:/Users/apatel/.smt_solvers/z3:/Users/apatel/.smt_solvers:${PYTHONPATH}"
