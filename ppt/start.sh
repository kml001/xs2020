#!/usr/bin/bash

if [ $PLAYPPT -ne 0 ]; then
 exit 0
fi

rm /tmp/.X0-lock &>/dev/null || true

export DISPLAY=:0
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
echo "Starting X in 2 seconds"
sleep 2
#mpg123 -Z /usr/src/app/*.mp3 &
startx 

while :
do
	echo "startx failed, so we will just wait here while you debug!"
	sleep 30
done
