# 
# vm161.fish: headless cs161 virtual machine management. 
#

function vm161
    set -l vm cs161
    set -l user jharvard
    set -l host 192.168.56.102
    if test (count $argv) = 1
        switch "$argv[1]"
            case start
                # detach from terminal and run in bg
                nohup VBoxHeadless --startvm "$vm" > /dev/null 2>&1 &
            case stop
                VBoxManage controlvm "$vm" poweroff
            case pause 
                VBoxManage controlvm "$vm" pause 
            case reset 
                VBoxManage controlvm "$vm" reset 
            case ssh
                ssh $user@$host
            case status
                vboxmanage list runningvms
            case mount
                sshfs $user@$host:/home/jharvard/cs161 /home/alex/Docs/cs161/cs161 -o sshfs_sync
        end
    else 
        echo "Usage: vm161 [start|stop|pause|reset|ssh|status]"
    end
end
