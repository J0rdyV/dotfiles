while true; do

	charge=$(cat /sys/class/power_supply/BAT0/status)
	if [ $charge == 'Charging' ]
	then 
		icon=' ⚡'
	else
		icon=''
	fi
	xsetroot -name "$icon $(cat /sys/class/power_supply/BAT0/capacity)% $(date '+%d/%m %H:%M') "
	sleep 2
done
