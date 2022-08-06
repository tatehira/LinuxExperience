#!/bin/bash

echo "Criação de diretórios"
mkdir publico adm ven sec

echo "Criação de grupos de Usuarios"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de usuarios ADM"
useradd carlos -m -s /bin/bash -p $(openssh passwd -crypt Senha123) -G GRP_ADM
useradd mario -m -s /bin/bash -p $(openssh passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssh passwd -crypt Senha123) -G GRP_ADM

echo "Criação de usuarios VEN"
useradd debora -m -s /bin/bash -p $(openssh passwd -crypt Senha123) -G GRP_VEN
useradd alberto -m -s /bin/bash -p $(openssh passwd -crypt Senha123) -G GRP_VEN
useradd paulo -m -s /bin/bash -p $(openssh passwd -crypt Senha123) -G GRP_VEN

echo "Criação de usuarios SEC"
useradd isla -m -s /bin/bash -p $(openssh passwd -crypt Senha123) -G GRP_SEC
useradd gabi -m -s /bin/bash -p $(openssh passwd -crypt Senha123) -G GRP_SEC
useradd vitor -m -s /bin/bash -p $(openssh passwd -crypt Senha123) -G GRP_SEC

echo "Permissões dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publica

echo "Finalizado"
