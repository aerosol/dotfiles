export XDG_CONFIG_HOME=/home/hq1/.config
setxkbmap "us,pl(intl)" -option grp:alt_shift_toggle
setxkbmap -option ctrl:nocaps
setxkbmap -option altwin:swap_alt_win
xrdb -merge ~/.Xresources
exec bspwm
