#########################
#!/bin/bash

#########################
# Removendo usuários dos  grupos
sudo gpasswd -d GRP_ADM carlos
sudo gpasswd -d GRP_ADM maria
sudo gpasswd -d GRP_ADM joao
sudo gpasswd -d GRP_VEN debora
sudo gpasswd -d GRP_VEN sebastiana
sudo gpasswd -d GRP_VEN roberto
sudo gpasswd -d GRP_SEC josefina
sudo gpasswd -d GRP_SEC amanda
sudo gpasswd -d GRP_SEC rogerio

#########################
# Deletando grupos
sudo groupdel GRP_ADM
sudo groupdel GRP_VEN
sudo groupdel GRP_SEC

#########################
# Deletando usuários
sudo userdel -r -f carlos
sudo userdel -r -f maria
sudo userdel -r -f joao
sudo userdel -r -f debora
sudo userdel -r -f sebastiana
sudo userdel -r -f roberto
sudo userdel -r -f josefina
sudo userdel -r -f amanda
sudo userdel -r -f rogerio

#########################
# Deletando diretórios
sudo rm -rf /publico /adm /ven /sec

#########################
# Criando diretóiros
sudo mkdir /publico /adm /ven /sec

#########################
# Definindo permissões de diretórios
sudo chmod 777 /publico/
sudo chmod 700 /adm/
sudo chmod 700 /ven/
sudo chmod 700 /sec/

#########################
# Criando grupos
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

#########################
# Definindo dono e grupo de diretórios
sudo chown root:GRP_ADM /adm/
sudo chown root:GRP_VEN /ven/
sudo chown root:GRP_SEC /sec/

#########################
# Criando usuários
sudo useradd carlos -m -c 'Carlos' -s /bin/bash -p (openssl passwd -crypt @123@)
sudo useradd maria -m -c 'Maria' -s /bin/bashh -p (openssl passwd -crypt @123@)
sudo useradd joao -m -c 'João' -s /bin/bashh -p (openssl passwd -crypt @123@)
sudo useradd debora -m -c 'Debora' -s /bin/bashh -p (openssl passwd -crypt @123@)
sudo useradd sebastiana -m -c 'Sebastiana' -s /bin/bashh -p (openssl passwd -crypt @123@)
sudo useradd roberto -m -c 'Roberto' -s /bin/bashh -p (openssl passwd -crypt @123@)
sudo useradd josefina -m -c 'Josefina' -s /bin/bashh -p (openssl passwd -crypt @123@)
sudo useradd amanda -m -c 'Amanda' -s /bin/bashh -p (openssl passwd -crypt @123@)
sudo useradd rogerio -m -c 'Rogerio' -s /bin/bashh -p (openssl passwd -crypt @123@)

#########################
# Definindo usuários por grupo
sudo usermod -g GRP_ADM carlos
sudo usermod -g GRP_ADM maria
sudo usermod -g GRP_ADM joao
sudo usermod -g GRP_VEN debora
sudo usermod -g GRP_VEN sebastiana
sudo usermod -g GRP_VEN roberto
sudo usermod -g GRP_SEC josefina
sudo usermod -g GRP_SEC amanda
sudo usermod -g GRP_SEC rogerio
