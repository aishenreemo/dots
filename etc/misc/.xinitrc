xrdb -I$HOME ~/.Xresources
xsetroot -cursor_name left_ptr

export PATH="$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH"
export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=bspwm
export XDG_SEAT_PATH=/org/freedesktop/DisplayManager/Seat0
exec bspwm
