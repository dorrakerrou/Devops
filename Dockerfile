#tpAchatProject-1.0.jar

FROM openjdk:8-jdk-alpine
ARG DEFAULT_PATH=target/tpAchatProject-1.0.jar
WORKDIR /
ENV JAR_PATH=$DEFAULT_PATH
COPY ${JAR_PATH} app.jar

EXPOSE 8080
CMD ["java", "-jar", "-Dspring.profiles.active=prod", "app.jar"]

