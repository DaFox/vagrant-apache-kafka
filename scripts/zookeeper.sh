#!/bin/bash

# create myid file. see http://zookeeper.apache.org/doc/r3.1.1/zookeeperAdmin.html#sc_zkMulitServerSetup
if [ ! -d /tmp/zookeeper ]; then
    echo creating zookeeper data dir...
    mkdir /tmp/zookeeper
    echo $1 > /tmp/zookeeper/myid
fi
# echo starting zookeeper 
/opt/kafka_2.11-0.8.2.2/bin/zookeeper-server-start.sh /vagrant/config/zookeeper.properties > /tmp/zookeeper.log &
