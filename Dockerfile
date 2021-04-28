FROM openjdk:11
# NB : openjdk:11 is based on a debian version

# Install Tomcat
RUN mkdir /tmp/install_script
ADD .github/scripts/install_tomcat.sh /tmp/install_script.sh
RUN bash /tmp/install_script.sh

# Install maven
RUN apt-get update && apt-get install -y maven 

# Copy local directory
RUN mkdir /app
WORKDIR /app
ADD src /app/src
ADD pom.xml /app/pom.xml

# Build project
RUN mvn install

# Add test
ADD test_as_shell /app/test_as_shell

# Run Tomcat
ADD .github/scripts/run_tomcat.sh /app/test_as_shell/run_tomcat.sh
ADD .github/scripts/install_war.sh install_war.sh
RUN bash install_war.sh

CMD bash test_as_shell/run_tomcat.sh > /dev/null && bash test_as_shell/test_tp1.sh
