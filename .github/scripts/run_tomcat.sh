#!/bin/bash
set -euxo pipefail

bash /opt/tomcat/bin/catalina.sh run&
while [ -z "$(netstat -a | grep 8080)"]
do
	sleep 1
done
# Check tomcat is running
curl http://localhost:8080 1> /dev/null