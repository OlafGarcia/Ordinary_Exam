#!/bin/bash

full=$(sudo cat /etc/centos-release)
#version7="CentOS Linux release 7.9.2009 (Core)"
version8="CentOS Linux release 8.5.2111"
#echo "Tu version de Centos es:" $full
 
alto=$(yum list installed | grep clamav)

if [[  $alto == $alto ]]
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

if [[ $full = 7 ]]
then
echo "hola"
#sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
elif [[ $full == $version8 ]]
then
echo "prueba"
fi

epel=$(yum list installed | grep *epel*)
#veri=$(yum list installed | grep *epel*)

if $epel
then
sudo yum -y install clamav
fi

#prueba=$(yum list installed | grep clamav)

#if [[  $prueba == $prueba ]]
#then
#sudo yum -y install clamav
#fi


