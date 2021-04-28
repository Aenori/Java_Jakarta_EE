#!/bin/bash
set -euxo pipefail

bash /opt/tomcat/bin/catalina.sh run&
# Check tomcat is running
curl http://localhost:8080 1> /dev/null