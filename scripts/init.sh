#!/bin/bash
#download rpm if not present
if [ ! -f /vagrant/kafka/kafka_2.11-0.8.2.2.tgz ]; then
    echo Downloading kafka...
    wget -q http://ftp.halifax.rwth-aachen.de/apache/kafka/0.8.2.2/kafka_2.11-0.8.2.2.tgz -P /vagrant/kafka/
fi

if [ ! -f /vagrant/kafka/jdk-7u79-linux-x64.rpm ]; then
    echo Downloading JDK rpm
    wget -q --no-cookies --no-check-certificate --header "Cookie: s_cc=true; oraclelicense=accept-securebackup-cookie; s_nr=1448221969543; gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk7-downloads-1880260.html; s_sq=%5B%5BB%5D%5D" "http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.rpm" -P /vagrant/kafka/
fi

#disabling iptables
/etc/init.d/iptables stop
echo installing jdk and kafka...
rpm -ivh /vagrant/kafka/jdk-7u79-linux-x64.rpm
tar xvzf /vagrant/kafka/kafka_2.11-0.8.2.2.tgz -C /opt
echo done installing jdk and kafka
# chmod scripts
chmod u+x /vagrant/scripts/*.sh
