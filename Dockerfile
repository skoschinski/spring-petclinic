FROM openjdk:8-jdk-alpine

RUN mkdir /home/app
WORKDIR /home/app

COPY .mvn ./.mvn
COPY mvnw ./mvnw
COPY mvnw.cmd ./mvnw.cmd

COPY pom.xml .
COPY src ./src
RUN  ./mvnw package


CMD ["java", "-version"]

