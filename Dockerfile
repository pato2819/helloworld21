# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "martinhodtembo@gmail.com" 
RUN rm -rf /usr/local/tomcat/webapps
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
