#########################
#!/bin/bash

#########################
echo 'Criando diretórios...'
sudo mkdir /publico /adm /ven /sec

#########################
echo 'Definindo permissões de diretórios...'
sudo chmod 777 /publico/
sudo chmod 700 /adm/
sudo chmod 700 /ven/
sudo chmod 700 /sec/

#########################
echo 'Criando grupos...'
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

#########################
echo 'Definindo dono e grupo de diretórios...'
sudo chown root:GRP_ADM /adm/
sudo chown root:GRP_VEN /ven/
sudo chown root:GRP_SEC /sec/

#########################
echo 'Criando usuários...'
sudo useradd carlos -m -c 'Carlos' -s /bin/bash -p (openssl passwd -crypt @123@) -G GRP_ADM
sudo useradd maria -m -c 'Maria' -s /bin/bashh -p (openssl passwd -crypt @123@) -G GRP_ADM
sudo useradd joao -m -c 'João' -s /bin/bashh -p (openssl passwd -crypt @123@) -G GRP_ADM
sudo useradd debora -m -c 'Debora' -s /bin/bashh -p (openssl passwd -crypt @123@) -G GRP_VEN
sudo useradd sebastiana -m -c 'Sebastiana' -s /bin/bashh -p (openssl passwd -crypt @123@) -G GRP_VEN
sudo useradd roberto -m -c 'Roberto' -s /bin/bashh -p (openssl passwd -crypt @123@) -G GRP_VEN
sudo useradd josefina -m -c 'Josefina' -s /bin/bashh -p (openssl passwd -crypt @123@) -G GRP_SEC
sudo useradd amanda -m -c 'Amanda' -s /bin/bashh -p (openssl passwd -crypt @123@) -G GRP_SEC
sudo useradd rogerio -m -c 'Rogerio' -s /bin/bashh -p (openssl passwd -crypt @123@) -G GRP_SEC
