FROM alpine:latest
RUN apk update

RUN apk fetch openjdk8
RUN apk add openjdk8

RUN apk fetch maven
RUN apk add maven

RUN apk fetch git
RUN apk add git

RUN git clone https://github.com/harald-billstein/test.git
RUN mvn clean install -f /test/pom.xml
CMD ["java","-jar","/test/target/echo-0.0.1-SNAPSHOT.jar"]






