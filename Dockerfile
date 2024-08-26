FROM openjdk:8u151-jdk-alpine3.7
ENV APP_HOME /usr/src/app
WORKDIR $APP_HOME
COPY /target/secretsanta-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar
EXPOSE 8080
ENTRYPOINT exec java -jar app.jar