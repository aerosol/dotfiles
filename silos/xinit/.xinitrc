export XDG_CONFIG_HOME=/home/hq1/.config
setxkbmap -option ctrl:nocaps 
setxkbmap -option altwin:swap_lalt_lwin
xrdb -merge ~/.Xresources
exec bspwm
