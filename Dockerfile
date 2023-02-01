FROM openjdk:17
EXPOSE 8080
COPY ./target/user-registration-web-app.jar /user-registration-app.jar
ENTRYPOINT ["java", "-jar", "user-registration-app.jar"]