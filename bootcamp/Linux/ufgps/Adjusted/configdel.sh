#########################
#!/bin/bash

#########################
# Removendo usuários dos  grupos
#sudo gpasswd -d GRP_ADM carlos
#sudo gpasswd -d GRP_ADM maria
#sudo gpasswd -d GRP_ADM joao
#sudo gpasswd -d GRP_VEN debora
#sudo gpasswd -d GRP_VEN sebastiana
#sudo gpasswd -d GRP_VEN roberto
#sudo gpasswd -d GRP_SEC josefina
#sudo gpasswd -d GRP_SEC amanda
#sudo gpasswd -d GRP_SEC rogerio

#########################
echo 'Deletando grupos...'
sudo groupdel GRP_ADM
sudo groupdel GRP_VEN
sudo groupdel GRP_SEC

#########################
echo 'Deletando usuários...'
sudo userdel -rf carlos
sudo userdel -rf maria
sudo userdel -rf joao
sudo userdel -rf debora
sudo userdel -rf sebastiana
sudo userdel -rf roberto
sudo userdel -rf josefina
sudo userdel -rf amanda
sudo userdel -rf rogerio

#########################
echo 'Deletando diretórios...'
sudo rm -rf /publico /adm /ven /sec
