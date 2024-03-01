those are the commands of installing java :

sudo apt update

sudo apt install openjdk-17-jdk openjdk-17-jre

echo "/usr/lib/jvm/java-17-openjdk-amd64" >> /etc/environment

source /etc/environment


sudo apt install maven

cd kafkawithzookeeper

docker-compose up -d

(wait 5 seconds)

cd ../kafkaproducer

mvn clean install

java -jar target/kafkaproducer-0.0.1-SNAPSHOT.jar

(the server will be running try to create another instance to continue)

cd ../kafkaconsumer

mvn clean install

java -jar target/kafkaconsumer-0.0.1-SNAPSHOT.jar

(if we close the script the servers (producer and consumer will be stopped and also the containers)
