#########################
#!/bin/bash


#########################
echo 'Atualização do Pacotes do Servidor...'
sudo apt update
sudo apt upgrade -y

#########################
echo 'Instalando Servidor Apache...'
sudo apt install openssh-server -y

#########################
echo 'Instalando Descompacitador...'
sudo apt install unzip -y

#########################
echo 'Baixando Projeto no Diretório /tmp e disponibilizando para o Apache...'
sudo cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sudo unzip main.zip
sudo cp -R linux-site-dio-main /var/www/html
