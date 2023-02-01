FROM openjdk:17
EXPOSE 80
ARG JAR_FILE=build/libs/user-registration-app.jar
COPY ${JAR_FILE} user-registration-app.jar
ENTRYPOINT ["java", "-jar", "user-registration-app.jar"]