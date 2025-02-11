#!/bin/bash
echo "criando projeto"

mkdir /publico
mkdir /adm
mkdir /vem
mkdir /sec

echo "grupos usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários"

useradd eduardo -m -s /bin/bash -p  $(openssl  passwd -crypt 123@Mudar) -G GRP_ADM
useradd enok -m -s /bin/bash -p $(openssl passwd -crypt 123@Mudar) -G GRP_ADM
useradd vitor -m -s /bin/bash -p $(openssl passwd -crypt 123@Mudar) -G GRP_ADM

useradd audemario -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd fernando -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd junior -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd cesar -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd fabio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

acho "permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "finalizado o script"

