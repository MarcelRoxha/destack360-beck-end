FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENV PORT 8080
ENV HOST 0.0.0.0
ENTRYPOINT ["java", "-jar", "/app.jar"]