export XDG_CONFIG_HOME=/home/hq1/.config
export VDPAU_DRIVER=va_gl

export XDG_CURRENT_DESKTOP="KDE"
export QT_AUTO_SCREEN_SCALE_FACTOR="0"
export QT_FONT_DPI="196"
export QT_SCREEN_SCALE_FACTORS="eDP-1=196;"
export GDK_SCALE="2"
export GDK_DPI_SCALE="0.5"

setxkbmap -option ctrl:nocaps 
setxkbmap -option altwin:swap_lalt_lwin
xrdb -merge ~/.Xresources
exec bspwm
#exec startplasma-x11
