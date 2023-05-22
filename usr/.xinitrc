setxkbmap se &

xsetroot -solid "#111111"

while true; do


  CPUTEMPKB=$(cat /sys/class/thermal/thermal_zone0/temp)
  CPUTEMP=$(bc -l <<< "scale=2; ${CPUTEMPKB}/1000" | sed '/\./ s/\.\{0,1\}0\{1,\}$//')
  MEMUSE=$(free -m | awk '/Mem:/ {print $3}')
  LOADAVG=$(uptime | awk '{print $10}') 
  #LOAD=$(bc -l <<< "scale=2; ${LOADAVG::-1}/16")
  BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)

 #DATE=`date '+%A %W'`
  TIME=`date '+%k:%M'`
	xsetroot -name " [load: ${LOADAVG::-1}%] [mem: ${MEMUSE}mb] [cputmp: ${CPUTEMP}°c] [${TIME}] [${BATTERY}%] "

	sleep 10s

done &

exec dbus-launch --exit-with-session dwm
