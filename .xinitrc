# Enable the best keyboard layout :P
setxkbmap -layout dvorak

# Remove blue light
redshift -O 4000K &

# Set backlight to 70%
# xbacklight -set 70 &
echo 70 > /sys/class/backlight/nv_backlight/brightness

# Enable numlock
numlockx &

# Enable clipboard history
clipmenud &

# Set wallpaper
# feh --bg-fill ~/dotfiles/images/wallpaper.jpeg &
# feh --bg-fill ~/personal/wallpapers/DSCN1871.JPG &
# feh --bg-fill ~/personal/wallpapers/yannick-pulver-ZwPuquZBnyM-unsplash.jpg &
feh --bg-fill ~/personal/wallpapers/photo-1642201344145-0d49517e76e7.jpeg &

# Enable opacity
xcompmgr &

# Exec time script to show time and battery in dwm title
~/dotfiles/scripts/dwmtime.sh &

# Speed up xrate
# xset r rate 300 50 &
xset r rate 200 60 &

# Remove mouse when idle
unclutter &

# fix webcam
v4l2-ctl -d /dev/video0 -c exposure_auto=1 &
v4l2-ctl -d /dev/video0 -c exposure_absolute=100 &

# Start WM
exec dwm
# exec xfce4-session
