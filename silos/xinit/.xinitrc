if [ "$HOSTNAME" = carb ]; then
xrdb -merge ~/.Xresources.carb
setxkbmap -option ctrl:nocaps 
setxkbmap -option altwin:swap_lalt_lwin
export BROWSER=firefox
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
export XDG_CONFIG_HOME=/home/hq1/.config
export XDG_CURRENT_DESKTOP=bspwm
export XDG_SESSION_TYPE=x11
export XSECURELOCK_DISCARD_FIRST_KEYPRESS=0
export XSECURELOCK_SAVER=saver_mpv
exec bspwm
fi
