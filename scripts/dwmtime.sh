while true; do
	xsetroot -name " $(cat /sys/class/power_supply/BAT0/capacity)% $(date +%H:%M) "
	sleep 2
done
