
# About

This project demonstrates a simple Apache Kafka producer/consumer implementation using Spring Boot.

## Requirements

- JDK 17+
- Docker CE + Docker Compose (if you want to run kafka and zookeeper in docker containers)
- Kubernetes (if you want to deploy kafka/zk in k8s, please proceed to 'kafka-on-k8s/' for more info)

## Installation

1. Install JDK 17 if not already installed:

    ```bash
    sudo bash install_java17.sh
    ```

## Usage

1. Run the following command to start Kafka, Zookeeper, producer, and consumer servers:

    ```bash
    sudo bash start_servers.sh
    ```

## Directory Structure

- `producer`: Kafka producer Spring Boot project.
- `consumer`: Kafka consumer Spring Boot project.
- `kafkawithzookeeper/docker-compose.yml`: Docker Compose file to start Kafka and Zookeeper locally.
- `install_java17.sh`: Bash script to install JDK 17.
- `start_servers.sh`: Bash script to start Kafka, Zookeeper, producer, and consumer servers.

## Verification

After starting the servers, navigate to the `verify` directory for further testing and verification.

## Note

This guide assumes a Debian-based distribution like Ubuntu. Please adjust commands accordingly for other systems.

