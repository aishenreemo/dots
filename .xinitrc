xrdb -I$HOME ~/.Xresources

export PATH="/usr/local/bin:$HOME/.local/bin:$PATH"
export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=bspwm
export XDG_SEAT_PATH=/org/freedesktop/DisplayManager/Seat0
export XCURSOR_THEME=BreezeX-RosePine-Linux

exec $XDG_CURRENT_DESKTOP
