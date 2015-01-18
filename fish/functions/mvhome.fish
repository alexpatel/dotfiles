function activate
    if test (count $argv) = 1
        mv $argv[1] ~/ 
    else
        echo "mvhome [src]: move to home directory"
    end
end
