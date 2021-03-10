# Enable the best keyboard layout :P
setxkbmap -layout dvorak

# Remove blue light
redshift -O 4500K &

# Set backlight to 70%
xbacklight -set 70 &

# Enable numlock
numlockx &

# Enable clipboard history
clipmenud &

# Set wallpaper
feh --bg-fill ~/dotfiles/images/wallpaper.jpeg --auto-rotate &

# Enable opacity
xcompmgr &

# Exec time script to show time and battery in dwm title
~/dotfiles/scripts/dwmtime.sh &

# Speed up xrate
xset r rate 300 50 &

# Remove mouse when idle
unclutter &

# Start WM
exec dwm
