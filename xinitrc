#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# background and xterm transparency
# xcompmgr -c & 
# i3bar refresh
syndaemon -d -i 0.1s -k
# keyboard config
xbindkeys
/usr/bin/xmodmap $HOME/.Xmodmap
[[ -f ~/.Xresources ]] && xrdb - merge ~/.Xresources
exec i3


