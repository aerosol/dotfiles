export XDG_CONFIG_HOME=/home/hq1/.config
export VDPAU_DRIVER=va_gl
setxkbmap -option ctrl:nocaps 
setxkbmap -option altwin:swap_lalt_lwin
xrdb -merge ~/.Xresources
exec bspwm
