xrdb -I$HOME ~/.Xresources

export PATH="$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH"
export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=i3
export XDG_SEAT_PATH=/org/freedesktop/DisplayManager/Seat0
exec i3
