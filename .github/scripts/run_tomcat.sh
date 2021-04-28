#!/bin/bash
set -euxo pipefail

bash /opt/tomcat/bin/catalina.sh run&
cpt=0
while [ -z "$(netstat -a | grep 8080)"]
do
	sleep 1
	((cpt+=1))

	if ((cpt > 15))
	then
		echo "ERROR : Tomcat didn't start in 15 seconds"
		exit(1)
	fi
done
# Check tomcat is running
curl http://localhost:8080 1> /dev/null