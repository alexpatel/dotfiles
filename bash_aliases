export DOCUMENTS=${HOME}/Dropbox/2017-2018

# filesystem movement
alias bd="cd .."
alias "..."="cd ../.."
alias cdl="cd -"
alias d="cd ${DOCUMENTS}"
alias c="cd ${DOCUMENTS}/code"
alias df="cd ${DOCUMENTS}/code/dotfiles"
alias dl="cd ~/Downloads"
alias v="vim"
alias src="source ~/.bashrc"
alias dr="cd ${EXT1}"

# Git
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gf="git fetch"
alias gl="git slog"
alias gll="git llog"
alias gpl="git pull"
gps() { git push origin `git rev-parse --abbrev-ref HEAD` $@;}
grb() { if [[ $# -eq 0 ]] ; then git rebase -i HEAD~10; else git rebase -i $@; fi; } 
alias grba="git rebas --abort"
alias grbc="git rebase --cont"
alias grh="git reset --hard"
alias grm="git remove"
alias grs="git sreset"
alias grsh="git hreset"
alias grv="git remote -v"
alias gs="git status"
alias gst="git stash"
alias gsta="git stash apply"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gus="git unstage"

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
alias dcrup="docker-compose down && docker-compose build && docker-compose up"
# do root things on a container with bash
dkrt() { docker exec -it --user root $1 /bin/bash; }
# stop and remove all containers/images
dkrm() {
    ps=$(docker ps -a -q)
    docker stop $ps
    docker rm $ps
    docker rmi $(docker images -a --filter=dangling=true -q)
}


# Harvard-PRINCESS
alias p="cd ${DOCUMENTS}/princess"
alias sshmnch="ssh ahp@munchmunch.seas.harvard.edu"

# Apache Airflow
test_dag() {
  worker=`dk ps | grep etlexternal_worker | awk '{ print $1 }'`
  docker exec -it $worker airflow trigger_dag $1
}

# pySMT
#PYTHONPATH="${HOME}/.smt_solvers/python-bindings-2.7:${HOME}/.smt_solvers/z3:${HOME}/.smt_solvers:${PYTHONPATH}"

# SSH
alias sshfp="ssh ahp@fencepost.gnu.org"
alias sshbf="ssh ahp@nomnomnom.seas.harvard.edu"
alias syncbf="rsync -avz ${DOCUMENTS}/princess/Guppy ahp@nomnomnom.seas.harvard.edu:~/"

# just the source code, please
get_git_repo_files() {
    git archive --format=tar --remote=$1 HEAD | tar xf -
}
