function activate
    if test (count $argv) = 1
        source $HOME/.venvs/$argv[1]/bin/activate.fish
    else
        echo "Usage: activate [virtualenv]"
    end
end
