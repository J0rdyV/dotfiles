setxkbmap -layout dvorak
redshift -O 4500K &
xbacklight -set 70 &
numlockx &
clipmenud &
feh --bg-fill ~/Wallpapers/arch.png &
/home/jordy/personal/dwmtime/dwmtime.sh &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
exec dwm
