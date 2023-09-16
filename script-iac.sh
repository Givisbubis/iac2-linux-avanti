#!/bin/bash

echo "Atualizando o Servidor..."

sudo apt-get update -y
sudo apt-get upgrade -y

echo "Instalando o Apache e Unzpi..."

sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
sudo cp -R * /var/www/html/