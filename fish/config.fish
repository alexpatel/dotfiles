set fish_greeting ""

alias bd="cd .."
alias ...="cd ../.."
alias -="cd -"
alias d="cd ~/documents"
alias c="cd ~/code"
alias df="cd ~/code/dotfiles"
alias dl="cd ~/downloads"

# git
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit --verbose"
alias gd="git difftool --tool=vimdiff --no-prompt"
alias gco="git checkout"
alias gf="git fetch --all"
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

# CVS
set -gx CVS_RSH ssh 
set -gx CVSROOT $HOME/code/gnu/www

# vagrant
alias vup="vagrant up"
alias vh="vagrant halt"
alias vs="vagrant status"
alias vssh="vagrant ssh"
alias vr="vagrant reload"
alias vds="vagrant destroy"
alias vrl="vagrant reload"

# python
#alias python="python2"

set PATH /usr/local/bin $PATH

set --export CLICOLOR 1
set --export LSCOLORS gxBxhxDxfxhxhxhxhxcxcx

# Start X at login
if status --is-login
	if test -z "$DISPLAY" -a $XDG_VTNR = 1
		exec startx -- -keeptty >~/.xorg.log ^&1
	end
end
