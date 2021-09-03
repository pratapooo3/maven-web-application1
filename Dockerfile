# we take tomcat as a base image
FROM tomcat:8.5-jre8-openjdk-slim-buster
# we are copy the war file from target to webapps directory
COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war 




