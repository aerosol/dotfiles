export XSECURELOCK_FONT="SF Pro Display:size=46"
export XSECURELOCK_BLANK_TIMEOUT=-1
export XSECURELOCK_PASSWORD_PROMPT=kamoji
if [ "$HOSTNAME" = carb ]; then
  export QT_AUTO_SCREEN_SCALE_FACTOR=1
  xrdb -merge ~/.Xresources.carb
  setxkbmap -option ctrl:nocaps 
  setxkbmap -option altwin:swap_lalt_lwin
  export BROWSER=firefox
  export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
  export XDG_CONFIG_HOME=/home/hq1/.config
  export XDG_CURRENT_DESKTOP=bspwm
  export XDG_SESSION_TYPE=x11
  exec bspwm
fi
