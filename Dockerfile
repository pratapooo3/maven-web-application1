FROM tomcat:8.5-jre8-openjdk-slim-buster
COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war 




