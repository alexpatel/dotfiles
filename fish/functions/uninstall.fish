function uninstall
    if test (count $argv) = 1
		sudo dpkg -r $argv[1]
    else
        echo "Usage: uninstall [packagename]"
    end
end
