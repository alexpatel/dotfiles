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

# i3bar refresh
syndaemon -d -i 0.1s -k
# keyboard 
xbindkeys
# xterm 
[[ -f ~/.Xresources ]] && xrdb - merge ~/.Xresources
# loading X11 fonts
FontPath /usr/share/fonts/100dpi
exec i3


