FROM openjdk:11
WORKDIR /app
COPY ./target/*.jar /app/spring-boot-web.jar
CMD ["java", "-jar", "spring-boot-web.jar"]