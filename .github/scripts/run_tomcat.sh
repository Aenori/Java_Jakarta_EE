#!/bin/bash
set -euxo pipefail

bash /opt/tomcat/bin/catalina.sh run&

for i in $(seq 0 15)
do
	tomcat_is_running=$(netstat -a | grep 8080)
	echo "Test "$tomcat_is_running

	if [ -n "$tomcat_is_running"]
	then
		break
	fi

	if [i -eq 15]
	then
		echo "ERROR : Tomcat didn't start in 15 seconds"
		exit 1
	fi
done
# Check tomcat is running
curl http://localhost:8080 1> /dev/null