while true; do

	charge=$(cat /sys/class/power_supply/BAT0/status)
	timew=$(timew | grep Tracking | sed -r 's/ *Tracking *//g')

	timewhours=$(timew | grep Total | sed -r 's/ *Total *//g' | cut -c 1)
	hour='h'
	if [ $timewhours -eq 0 ]
	then
		timewhours=''
		hour=''
	fi
	timewminutes=$(timew | grep Total | sed -r 's/ *Total *//g' | cut -c 3-4)
	min='m'

	if [ $charge == 'Charging' ]
	then 
		icon=' ⚡'
	else
		icon=''
	fi
	xsetroot -name " $timew ($timewhours$hour$timewminutes$min)$icon $(cat /sys/class/power_supply/BAT0/capacity)% $(date '+%d/%m %H:%M') "
	sleep 2
done
