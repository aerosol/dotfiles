export XDG_CONFIG_HOME=/home/hq1/.config
export VDPAU_DRIVER=va_gl

#export XDG_CURRENT_DESKTOP="KDE"
#export QT_AUTO_SCREEN_SCALE_FACTOR="0"
#export QT_FONT_DPI="196"
#export QT_SCREEN_SCALE_FACTORS="eDP-1=196;"
#export GDK_SCALE="2"
#export GDK_DPI_SCALE="0.5"

export XSECURELOCK_SAVER=saver_mpv
export XSECURELOCK_DISCARD_FIRST_KEYPRESS=0

export GDK_DPI_SCALE=0.5
export GDK_SCALE=2
export QT_SCREEN_SCALE_FACTORS=eDP-1=2;DP-1=2;HDMI-1=2;DP-2=2;
export KDE_FULL_SESSION=true

setxkbmap -option ctrl:nocaps 
setxkbmap -option altwin:swap_lalt_lwin
xrdb -merge ~/.Xresources
exec bspwm
#exec i3
#exec startplasma-x11
