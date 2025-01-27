

# Stage 1: Build the app with Maven (using a base image with OpenJDK 21)
FROM openjdk:21-jdk-slim AS build

# Install Maven manually
RUN apt-get update && apt-get install -y maven

# Set the working directory for the build stage
WORKDIR /app

# Copy the Maven project files and source code
COPY pom.xml .
COPY src /app/src

# Build the Spring Boot app (skip tests for faster build)
RUN mvn clean package -DskipTests

# Stage 2: Run the app with a minimal JDK runtime
FROM openjdk:21-jdk-slim

WORKDIR /app
COPY --from=build /app/target/main-0.0.1-SNAPSHOT.jar /app/lmain-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar", "main-0.0.1-SNAPSHOT.jar"]
