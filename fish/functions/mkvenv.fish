function mkvenv 
    if test (count $argv) = 1
        virtualenv $HOME/venvs/$argv[1]; and source $HOME/venvs/$argv[1]/bin/activate.fish
    else
        echo "Usage: mkvenv [virtualenv]"
    end
end
