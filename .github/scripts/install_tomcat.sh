#!/bin/bash
set -euxo pipefail

curl https://downloads.apache.org/tomcat/tomcat-10/v10.0.5/bin/apache-tomcat-10.0.5.tar.gz -o /tmp/apache-tomcat-10.0.5.tar.gz
mkdir /opt/tomcat
tar xzf /tmp/apache-tomcat*tar.gz -C /opt/tomcat --strip-components=1