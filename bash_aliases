# filesystem movement
alias bd="cd .."
alias "..."="cd ../.."
#alias -="cd -"
alias d="cd ~/Dropbox/2016-2017"
alias c="cd ~/Code"
alias df="cd ~/Code/dotfiles"
alias dl="cd ~/Downloads"
alias cs="cd ~/Dropbox/2016-2017/cs161"
alias src="source ~/.bashrc"
alias v="vim"
#alias ls="ls --indicator-style=classify --group-directories-first --color"

# update dotfile repository
function dotfile_commit {
    pushd ~/Code/dotfiles
    git add .
    git commit -m 'update dotfiles'
    git push origin master
    popd
}


# Git
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit --verbose"
#alias gd="git difftool --tool=vimdiff --no-prompt"
alias gco="git checkout"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gl="git log --graph --abbrev-commit --decorate --date=relative --all --stat"
alias gls="git log --graph --abbrev-commit --decorate --date=relative --all --stat -3"
alias glo="git log --oneline"
alias gps="git push"
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

# python
#alias python="python2"
alias pyc="find . -name '*.pyc' -delete"

# isabelle/HOL
alias isabelle="/Applications/Isabelle2016-1.app/Isabelle/bin/isabelle"
