setxkbmap -layout dvorak
redshift -O 4500K &
xbacklight -set 70 &
numlockx &
clipmenud &
feh --bg-fill ~/Wallpapers/2.JPG --auto-rotate &
xcompmgr &
/home/jordy/personal/dwmtime/dwmtime.sh &
xset r rate 300 50 &	# Speed xrate up
unclutter &		# Remove mouse when idle
exec dwm
