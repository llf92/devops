FROM openjdk:8-jdk-alpine

MAINTAINER 490853150@qq.com

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && mkdir -p /esms

EXPOSE 8090

ADD ./target/demo-0.0.1-SNAPSHOT.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar demo-0.0.1-SNAPSHOT.jar

