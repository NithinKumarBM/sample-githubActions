# Use an official Java runtime as a base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the main JAR file from the target directory into the container
COPY target/gs-maven-*.jar /app/gs-maven-0.1.0.jar

# Expose the port your application will run on (default is 8080 for many Java apps)
EXPOSE 8080

# Command to run the JAR file inside the container
CMD ["java", "-jar", "gs-maven-0.1.0.jar"]
