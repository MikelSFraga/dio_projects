#########################
#!/bin/bash


#########################
echo 'Instalando OpenSSL...'
sudo apt install openssh-server -y

#########################
echo 'Atualizando permissões para execução...'
sudo chmod +x configdel.sh
sudo chmod +x configadd.sh

#########################
echo 'Removendo configurações...'
sudo ./configdel.sh

#########################
echo 'Adicionando configurações...'
sudo ./configadd.sh
