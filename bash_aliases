# filesystem movement
alias bd="cd .."
alias "..."="cd ../.."
alias cdl="cd -"
alias d="cd ~/Dropbox/2016-2017"
alias c="cd ~/Dropbox/2016-2017/code"
alias df="cd ~/Dropbox/2016-2017/code/dotfiles"
alias dl="cd ~/Downloads"

alias v="vim"

# source bash profile
alias src="source ~/.bashrc"

# list block devices
alias lsdev="sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL"

# list large files
lslarge() {
    sudo find / -type f -size +100000k -exec ls -lh {} \; 2>/dev/null |\
        awk '{ print $5 "  " $9 }'
}


# Git

alias g="git"
alias ga="git add"
alias gcb="git rev-parse --abbrev-ref HEAD"
alias gb="git branch"
alias gc="git commit --verbose"
alias gco="git checkout"
alias gf="git fetch --all"
alias gfa="git fetch --all"
alias gpl="git pull"
gps() {
    git push origin `git rev-parse --abbrev-ref HEAD` $@
}
alias gl="git log --oneline"
alias gll="git log --abbrev-commit --decorate --date=relative --all --stat"
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

alias grba="git rebase --abort"
alias grbc="git rebase --continue"

grb() {
    if [[ $# -eq 0 ]] ; then
        git rebase -i HEAD~10
    else
        git rebase -i $@
    fi
} 


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
alias dkr="docker run -it"
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcb="docker-compose build"
alias dcrup="dc down && dc build && dc up"

# stop and remove all containers/images
dkrm() {
    ps=$(docker ps -a -q)
    docker stop $ps
    docker rm $ps
    docker rmi $(docker images -a --filter=dangling=true -q)
}

# do root things on a container with bash
dkrt() { docker exec -it --user root $1 /bin/bash; }

# Harvard-PRINCESS
alias sshbf="ssh ahp@nomnomnom.seas.harvard.edu"
alias syncbf="rsync -avz ~/Dropbox/2016-2017/princess/Guppy ahp@nomnomnom.seas.harvard.edu:~/"
alias p="cd ~/Dropbox/2016-2017/princess"
alias sshmnch="ssh ahp@munchmunch.seas.harvard.edu"

PYTHONPATH="/Users/apatel/.smt_solvers/python-bindings-2.7:/Users/apatel/.smt_solvers/z3:/Users/apatel/.smt_solvers:${PYTHONPATH}"

test_dag() {
  worker=`dk ps | grep etlexternal_worker | awk '{ print $1 }'`
  docker exec -it $worker airflow trigger_dag onshape-extracts;
  docker exec -it $worker airflow trigger_dag onshape-lifecycle;
}
