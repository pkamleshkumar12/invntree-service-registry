# Use the official OpenJDK 23 image as the base image
FROM openjdk:23-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/app.jar app.jar

# Expose the port your application runs on (adjust if needed)
EXPOSE 8761

# Set the entrypoint to run your Java application
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE:dev}", "app.jar"]