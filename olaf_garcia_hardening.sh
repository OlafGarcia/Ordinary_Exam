#!/bin/bash

full=$(hostnamectl | grep Operating)
echo "Tu version de Centos es:" $full
 
alto=$(yum list installed | grep clamav)

if [[  $alto == $alto  ]]
then
sudo yum -y remove clamav
else 
sudo yum -y install clamav
fi


echo "Se verificara si tienes instalado el paquete wget"
wget=$(yum list | grep *wget*)
verificar=$(yum list installed | grep wget)

if [[ $wget == $verificar ]]
then
sudo yum -y install wget
elif $wget
then
echo "Ya se tenia instalado"
fi


if [[ $full == *"CentOS"* ]] && [[ $full == *"7"* ]]
then
sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
elif [[ $full == *"CentOS"* ]] && [[ $full == *"8"* ]]
then
sudo yum -y install https://www.clamav.net/downloads/production/clamav-0.104.1.linux.x86_64.rpm
fi


epel=$(yum list installed | grep *epel*)
#veri=$(yum list installed | grep *epel*)

if $epel
then
sudo yum -y install clamav
fi

sudo yum -y install updates
