#!/bin/bash

if [ $# -gt 0 ]; then
    /opt/kafka_2.11-0.8.2.2/bin/kafka-console-consumer.sh --from-beginning --topic $1 --zookeeper 10.30.3.2:2181 
else
    echo "Usage: consumer.sh <topic_name>"
fi

