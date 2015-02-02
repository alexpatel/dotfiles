function lcd
    switch "$argv[1]";
        case "auto"
            xrandr --output DP2 --auto
        case "off"
            xrandr --output DP2 --off
        case "top"
            xrandr --output DP2 --above eDP1
        case "right"
            xrandr --output DP2 --right-of eDP1
        case "left"
            xrandr --output DP2 --left-of eDP1
        case "*"
            echo "Usage: lcd [auto|top|right|left|off]"
    end
end
