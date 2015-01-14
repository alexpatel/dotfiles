function activate
    if test (count $argv) = 1
        source /home/alex/venvs/$argv[1]/bin/activate.fish
    else
        echo "Usage: activate [virtualenv]"
    end
end
