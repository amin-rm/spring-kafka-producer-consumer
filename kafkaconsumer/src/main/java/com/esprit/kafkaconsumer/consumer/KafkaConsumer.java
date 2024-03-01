package com.esprit.kafkaconsumer.consumer;


import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Component
public class KafkaConsumer {

    @KafkaListener(topics = "InitialTopic", groupId = "aaa")

    public void consume(String message)
    {
        System.out.println("message = " + message);
    }
}
