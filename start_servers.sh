#!/bin/bash

# Install Maven
sudo apt update
sudo apt install maven

# Change directory to kafkawithzookeeper
cd kafkawithzookeeper || exit

# Start Kafka and Zookeeper containers
docker-compose up -d

# Wait for 5 seconds
sleep 5

# Change directory to kafkaproducer
cd ../kafkaproducer || exit

# Build the producer application
mvn clean install

# Run the producer application
java -jar target/kafkaproducer-0.0.1-SNAPSHOT.jar &

# Change directory to kafkaconsumer
cd ../kafkaconsumer || exit

# Build the consumer application
mvn clean install

# Run the consumer application and tail the logs
java -jar target/kafkaconsumer-0.0.1-SNAPSHOT.jar &
consumer_pid=$!

# Tail the logs of the consumer project
tail -f logs/consumer.log &

# Wait for the user to manually close the servers
read -p "Press any key to stop the servers and containers..."

# Stop the producer and consumer applications
kill "$consumer_pid"

# Stop Kafka and Zookeeper containers
cd ../kafkawithzookeeper || exit
docker-compose down

