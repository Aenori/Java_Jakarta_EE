#!/bin/bash
set -euxo pipefail

# Must be run after maven install on the same directory of the pom.xml file
cp target/java-web-project.war /opt/tomcat/webapps/java-web-project.war