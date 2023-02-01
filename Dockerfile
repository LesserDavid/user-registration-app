FROM openjdk:17
EXPOSE 8080
COPY /var/jenkins_home/workspace/test_build/build/libs/user-registration-web-app.jar user-registration-app.jar
ENTRYPOINT ["java", "-jar", "user-registration-app.jar"]