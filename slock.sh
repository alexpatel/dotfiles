#!/bin/sh -e

img_path="/tmp/screen_lock.png"

# save image and pixellate
scrot $img_path && mogrify -scale 10% -scale 1000% $img_path

# lock screen
i3lock -i $img_path
