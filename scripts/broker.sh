#!/bin/bash

#bootstrap server
/opt/kafka_2.11-0.8.2.2/bin/kafka-server-start.sh /vagrant/config/server$1.properties &
