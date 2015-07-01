function repair
    if test (count $argv) = 1
		sudo dpkg-reconfigure $argv[1]
    else
        echo "Usage: repair [packagename]"
    end
end
