# Use an official JDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY target/*.war app.war

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
