FROM alpine:3.14

RUN apk add openjdk8-jre

WORKDIR /opt

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.102/bin/apache-tomcat-9.0.102.tar.gz .

RUN tar xf apache-tomcat-9.0.102.tar.gz

RUN rm apache-tomcat-9.0.102.tar.gz

RUN mv apache-tomcat-9.0.102 tomcat9

COPY ./target/myweb*.war /opt/tomcat9/webapps/myweb.war

EXPOSE 8080

CMD ["/opt/tomcat9/bin/catalina.sh","run"]
