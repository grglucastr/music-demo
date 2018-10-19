# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="contact@glucs.me"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_NAME=music-demo-0.1.0.jar
ARG JAR_FILE=build/libs/${JAR_NAME}

# Add the application's jar to the container
ADD ${JAR_FILE} ${JAR_NAME}

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/music-demo-0.1.0.jar"]