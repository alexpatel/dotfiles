function mkvenv 
    if test (count $argv) = 1
        virtualenv $HOME/venvs/$argv[1]
    else
        echo "Usage: mkvenv [virtualenv]"
    end
end
