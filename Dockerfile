FROM openjdk:17
EXPOSE 8080
ADD target/user-registration-app.jar user-registration-app.jar
ENTRYPOINT ["java", "-jar", "user-registration-app.jar"]