#!/bin/bash

# Update the package index
sudo apt update

# Install OpenJDK 17
sudo apt install openjdk-17-jdk openjdk-17-jre

# Add Java 17 to the system environment variables
echo "/usr/lib/jvm/java-17-openjdk-amd64" | sudo tee -a /etc/environment

# Reload the environment variables
source /etc/environment

echo "Java 17 installation completed :)"

