function wlan 
    switch "$argv[1]";
        case "on"
            sudo ip link set wlp3s0 up 
        case "off"
            sudo ip link set wlp3s0 down 
        case "*"
            echo "Usage: wlan [on|off]"
    end
end
