#!/bin/bash 
yum install java-1.8.0-openjdk wget nano -y
cd /vagrant
#wget https://www.dropbox.com/s/siq3xtvj2hmzjz4/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar?dl=0
#mv spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar?dl=0 spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar
chown vagrant:vagrant APP/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar
nohup java -jar /vagrant/APP/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar -Dspring.profiles.active=mysql  > /dev/null 2>&1 & 