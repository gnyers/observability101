#!/bin/bah

for i in $(seq 1 200)
do for urgency in debug info warn error crit
	do 
		echo "Sending batch: $i with urgency $urgency (press CTRL+C to cancel)"
		logger -p local3.$urgency "Testing syslog forwarding; batch:$i, urgency:$urgency"
		sleep "1.$((RANDOM%10))"
	done
done
