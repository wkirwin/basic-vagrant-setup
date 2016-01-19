#!/bin/bash

# Install Java
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install software-properties-common
sudo echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get -y install oracle-java8-installer

# Install Scala
SCALA_FILE="scala-2.10.6.deb"
if [ ! -f /vagrant/resources/$SCALA_FILE ]; then
    wget -P /vagrant/resources www.scala-lang.org/files/archive/$SCALA_FILE
fi
sudo dpkg -i /home/resources/$SCALA_FILE
sudo apt-get -y update

# Install SBT
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get -y update
sudo apt-get -y install sbt

# Download and install Spark

SPARK_FILE="spark-1.5.1-bin-hadoop2.6.tgz"
if [ ! -f /vagrant/resources/$SPARK_FILE ]; then
    wget -P /vagrant/resources http://apache.arvixe.com/spark/spark-1.5.1/$SPARK_FILE
fi

su vagrant
mkdir /home/vagrant/spark-1.5.1
tar -xvz -C /home/vagrant/spark-1.5.1 -f /vagrant/resources/$SPARK_FILE

# just-to-be-sure bullshit
sudo chown -R vagrant:vagrant /home/vagrant/spark-1.5.1
