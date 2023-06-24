#
# These things are run when an Openbox X Session is started.
# You may place a similar script in $HOME/.config/openbox/autostart
# to run user-specific things.
#

# If you want to use GNOME config tools...
#
#if test -x /usr/lib/openbox/gnome-settings-daemon >/dev/null; then
#  /usr/lib/openbox/gnome-settings-daemon &
#elif which gnome-settings-daemon >/dev/null 2>&1; then
#  gnome-settings-daemon &
#fi

# If you want to use XFCE config tools...
#
#xfce-mcs-manager &

#xrandr --output DP-4 --mode 1920x1080 --rate 144.00 &
feh --bg-fill ~/Sync/custom/SJtfFtx.jpeg &
picom &
tint2 &
volctl &
dunst &
discord &
steam &
