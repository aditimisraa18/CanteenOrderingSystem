FROM tomcat:9.0-jre17-temurin

COPY CanteenOrderingSystem.war /usr/local/tomcat/webapps/CanteenOrderingSystem.war

EXPOSE 10000

CMD ["sh", "-c", "PORT=${PORT:-10000}; sed -i \"0,/port=\\\"8080\\\"/s//port=\\\"$PORT\\\"/\" /usr/local/tomcat/conf/server.xml; exec catalina.sh run"]
