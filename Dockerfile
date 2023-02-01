FROM openjdk:17
EXPOSE 8080
ARG JAR_FILE=build/libs/user-registration-web-app.jar
COPY target/${JAR_FILE} user-registration-app.jar
ENTRYPOINT ["java", "-jar", "user-registration-app.jar"]