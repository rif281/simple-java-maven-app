# Stage 1: Build the application
FROM maven:3.8.6-openjdk-11-slim AS build

# Copy source code to the image
WORKDIR /app
COPY . .

# Package the application
RUN mvn validate 
RUN mvn test
RUN mvn clean package

# Stage 2: Create the final runtime image
FROM openjdk:11-jre-slim

# Copy the built artifact from the build stage
COPY --from=build /app/target/my-app-*.jar ./my-app.jar

# Run the application
ENTRYPOINT ["java","-jar","./my-app.jar"]
