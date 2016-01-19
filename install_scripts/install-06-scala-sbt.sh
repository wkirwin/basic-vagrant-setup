#!/bin/bash

sudo apt-get -y update

SCALA_FILE="/vagrant/resources/scala-2.11.7.deb"
if [ ! -f $SCALA_FILE ];
then
	wget /vagrant/resources/ http://www.scala-lang.org/files/archive/scala-2.11.2.deb
fi

sudo dpkg -i /vagrant/resources/scala-2.11.7.deb
sudo apt-get -y update

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install -y sbt
