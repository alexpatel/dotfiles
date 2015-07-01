function install
    if test (count $argv) = 1
		sudo dpkg -i $argv[1]
    else
        echo "Usage: install [packagename]"
    end
end
