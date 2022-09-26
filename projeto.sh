#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADMIN
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd filipe -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADMIN
useradd jose -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADMIN
useradd silvio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADMIN

useradd ricardo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd charles -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd eder -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd roger -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADMIN /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."