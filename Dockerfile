# Tomcat 9 supports the javax.* JSP/JSTL libraries used by this academic project.
FROM tomcat:9.0-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*
COPY app/ /usr/local/tomcat/webapps/ROOT/
COPY start.sh /usr/local/bin/start-jstl.sh
RUN chmod +x /usr/local/bin/start-jstl.sh

EXPOSE 8080
CMD ["/usr/local/bin/start-jstl.sh"]
