# prompt git working directory status
function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

# prompt git branch
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

# shell prompt
export PS1='\u@\h \[\w $(parse_git_branch)$ '

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
#alias ls="ls --indicator-style=classify --group-directories-first --color"

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
