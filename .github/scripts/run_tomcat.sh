#!/bin/bash
set -euxo pipefail

bash /opt/tomcat/bin/catalina.sh run&

for i in $(seq 0 15)
do
	if [[ -n "$(netstat -a | grep 8080)" ]]
	then
		break
	fi

	echo "Waiting 1 seconds for Tomcat to start"

	if [ "$i" -eq "15" ]
	then
		echo "ERROR : Tomcat didn't start in 15 seconds"
		exit 1
	fi

	sleep 1
done
# Check tomcat is running
curl http://localhost:8080 1> /dev/null