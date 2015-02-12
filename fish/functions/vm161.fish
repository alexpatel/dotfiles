# 
# vm161.fish: headless cs161 virtual machine management. 
#

function vm161
    set -l vm cs161
    if test (count $argv) = 1
        switch "$argv[1]"
            case start
                VBoxHeadless --startvm "$vm" &
            case stop 
                VBoxManage controlvm "$vm" poweroff
            case pause 
                VBoxManage controlvm "$vm" pause 
            case reset 
                VBoxManage controlvm "$vm" reset 
            case ssh
                ssh jharvard@192.168.56.102
        end
    else 
        echo "Usage: vm161 [start|stop|pause|reset|ssh]"
    end
end
