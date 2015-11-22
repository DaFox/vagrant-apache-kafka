#!/bin/bash

if [ $# -gt 0 ]; then
    /opt/kafka_2.11-0.8.2.2/bin/kafka-topics.sh --create --zookeeper 10.30.3.2:2181 --replication-factor 3 --partitions 1 --topic $1
else
    echo "Usage: create_topic.sh <topic_name>"
fi

