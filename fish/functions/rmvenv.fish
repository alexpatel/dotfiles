function rmvenv 
    if test (count $argv) = 1
        rm -rf /home/alex/venvs/$argv[1]
    else
        echo "Usage: rmvenv [virtualenv]"
    end
end
