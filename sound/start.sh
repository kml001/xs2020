#!/usr/bin/bash

#rm /tmp/.X0-lock &>/dev/null || true

#export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

if [ $PLAYMP3 -ne 0 ]; then 
  exit 0 
else 
  mpg123 -Z /usr/src/app/*.mp3 
fi

