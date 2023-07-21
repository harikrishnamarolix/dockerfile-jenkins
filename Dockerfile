FROM maven:3.8-jdk-11

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and source code to the container
COPY pom.xml .
COPY src ./src

# Build the Maven project
RUN mvn package
