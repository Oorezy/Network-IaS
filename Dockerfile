FROM maven:3.8.5-openjdk-17 AS build
LABEL authors="OOREOLUWA-IBITOWA"

COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/WebApp-0.0.1-SNAPSHOT.jar WebApp.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "WebApp.jar"]