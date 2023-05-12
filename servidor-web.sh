#!/bin/bash

echo "Provisionando Servidor Web..."
echo "Atualizando servidor..."

apt-get update -y
apt-get upgrade -y

echo "Instalando softwares..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivos..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Criando servidor web..."

cd linux-site-dio-main
cp -R * /var/www/html

echo "Tudo pronto!"	
