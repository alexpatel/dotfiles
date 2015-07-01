function whereis 
    if test (count $argv) = 1
		find / -name $argv[1] 2> /dev/null
    else
        echo "Usage: whereis [filename]"
    end
end
