package com.esprit.kafkaproducer.controller;

import com.esprit.kafkaproducer.entities.Student;
import org.apache.kafka.common.protocol.types.Field;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.web.bind.annotation.*;


@RestController
public class producerController {


    @Autowired
    private KafkaTemplate<String,Student> kafkaTemplate;

    private static final String TOPIC = "InitialTopic";

    @PostMapping("/publish")
    public String publishMessage(@RequestBody Student student)
    {
        kafkaTemplate.send(TOPIC, student);
        return "Message published successfully by the producer !";
    }
}
