FROM openjdk:8-jdk-oracle
MAINTAINER i1dh <i1dh@tokencan.com>
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN mkdir -p /data/tokencan/
COPY target/App.jar /data/tokencan/App.jar
COPY src/main/resources/config.yaml /data/tokencan/config.yaml
ENTRYPOINT ["java","-jar","/data/tokencan/App.jar"]
