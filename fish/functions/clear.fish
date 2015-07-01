function activate
    if test (count $argv) = 1
		echo "" > $argv[1]
	else
        echo "Usage: clear [filename]"
    end
end
