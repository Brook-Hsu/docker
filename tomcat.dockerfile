FROM tomcat:11.0.24-jre21

ENV TZ="Asia/Taipei"
ARG war_file=labboot-ajax.war
COPY ./${war_file} /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
