
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

# CVS
set -gx CVS_RSH ssh 

# Vagrant
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vr="vagrant reload"
alias vdestroy="vagrant destroy"
alias manage="bash vagrant_manage.sh"
alias shell="bash vagrant_manage.sh shell_plus"

# Languages 
## Python
alias python="python2"

# activate virtualenv
function activate
    source ~/.venvs/$argv/bin/activate.fish
end

## Haskell
set PATH ~/.cabal/bin $PATH

## Fish
set fish_greeting ""

# Applications 

## Pandoc
# pandoc markdown > pdf
function md2pdf
    switch (count $argv)
        case 2
            pandoc -N --template=$argv[1] --variable mainfont=Georgia --variable sansfont=Arial --variable monofont="Bitstream Vera Sans Mono" --variable fontsize=12pt --variable version=1.10 README --latex-engine=xelatex --toc -o $argv[1] 
        case 3
            pandoc -N --template=$argv[1] --variable mainfont=Georgia --variable sansfont=Arial --variable monofont="Bitstream Vera Sans Mono" --variable fontsize=12pt --variable version=1.10 README --latex-engine=xelatex --toc -o $argv[2] 
        case 1
            echo "One (input filename) or two arguments (input/output filenames) required."
        case '*'
            echo "One (input filename) or two arguments (input/output filenames) required."
    end
end
