#!/bin/bash
# TOMCAT.SH
# Steps for Installing tomcat10 on rhel7&8
# install Java JDK 1.8+ as a pre-requisit for tomcat to run.
# https://github.com/LandmakTechnology/package-management/tree/main/Tomcat-installation
sudo cd /opt 
sudo yum install git wget -y

sudo yum install java-1.8.0-openjdk-devel -y

# Download tomcat software and extract it.


# dowanload and extract tomcat software
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz
sudo tar -xvf apache-tomcat-10.0.20.tar.gz
sudo rm apache-tomcat-10.0.20.tar.gz

sudo chmod 777 -R /opt/tomcat10
sudo sh /opt/tomcat10/bin/startup.sh
# create a soft link to start and stop tomcat from anywhere 
sudo ln -s /opt/tomcat10/bin/startup.sh /usr/bin/starttomcat
sudo ln -s /opt/tomcat10/bin/shutdown.sh /usr/bin/stoptomcat
sudo starttomcat
echo "end on tomcat installation"
#========

#2. Start of tomcat configuration 


#Tomcat server configuration:
find / -name server.xml context.xml
vim /opt/tomcat10/conf/server.xml
vi /opt/tomcat10/webapps/manager/META-INF/context.xml
vi /opt/tomcat10/conf/tomcat-users.xml  # to add user

	<user username="landmark" password="admin123" roles="manager-gui,admin-gui,manager-script"/>
	

/opt/tomcat10/conf/context.xml

 vi /opt/tomcat10/webapps/manager/META-INF/context.xml
  
  vi /opt/tomcat10/conf/tomcat-users.xml  # to add user
  
	
	username YourName password=PassWord   roles=manager-gui
	
	
