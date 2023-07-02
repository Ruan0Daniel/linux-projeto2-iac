 #!/bin/bash

echo "Atualizando o sistema ..."
apt-get update -y
apt-get upgrade -y

echo " Instalando o Apache"
apt install apache2 -y
rm /var/www/html/index.html

echo "Instalando o unzip"
apt-get install unzip -y

echo "Baixando o arquivo"

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd /tmp
unzip /tmp/main.zip
cp -R /tmp/linux-site-dio-main/* /var/www/html
