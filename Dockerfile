FROM openjdk:11
WORKDIR /app
COPY ./target/*.jar /app/app.jar
EXPOSE 8084
CMD ["java", "-jar", "app.jar"]