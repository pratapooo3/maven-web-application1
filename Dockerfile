# we take tomcat as a base image.....@@@@@@@@@@@@@@.......................
FROM tomcat:8-jre8
# we are copy the war file from target to webapps directory.........@@@@@@@@@@@@@@@@............
# COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war 
COPY **/*.war /usr/local/tomcat/webapps
EXPOSE 8080


