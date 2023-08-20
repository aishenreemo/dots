xrdb -I$HOME ~/.Xresources
xset s off -dpms
xrandr --output eDP-1 --scale 0.75

export PATH="$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH"
export XDG_SESSION_TYPE=x11
export XDG_CURRENT_DESKTOP=i3
export XDG_SEAT_PATH=/org/freedesktop/DisplayManager/Seat0
export XCURSOR_THEME=Bibata-Modern-Classic
export XCURSOR_PATH=${XCURSOR_PATH}:~/.local/share/icons
exec i3
