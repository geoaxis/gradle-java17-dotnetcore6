# Use an official Gradle image with Java 17 as the base image
FROM gradle:8.6.0-jdk17 AS build

# Install .NET Core
RUN apt-get update && \
    apt-get install -y wget && \
    wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y dotnet-sdk-6.0

# Continue with your Dockerfile configuration
# For example, you can copy your application code and run build commands here

# If you need to further customize the environment, you can use this image as a base in another Dockerfile
# For example:
# FROM build AS custom

# Any additional customization steps here

