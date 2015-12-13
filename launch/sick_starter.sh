#!/bin/bash

while true; do
	echo "Relais an"
	rostopic pub -1 Relais4SICK std_msgs/Bool "1"
	echo "5sec warten"
	sleep 5
	roslaunch /home/thieri/indigo_workspace/launch/sick_only.launch &>/dev/null
	echo "und nochmal..."
	echo "Relais aus"
	rostopic pub -1 Relais4SICK std_msgs/Bool "0"
	echo "5sec warten"
	sleep 5
done
