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

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

# xterm 
[[ -f ~/.Xresources ]] && xrdb - merge ~/.Xresources
# loading X11 fonts
FontPath /usr/share/fonts/100dpi
# i3 wm
exec i3


