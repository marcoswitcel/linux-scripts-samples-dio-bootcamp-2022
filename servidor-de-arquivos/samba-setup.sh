#!/bin/bash

FOLDER_NAME=/shared-folder

# Instalando o SAMBA
sudo apt install samba -y

# Criando e setando as permissões da pasta compartilhada
mkdir $FOLDER_NAME
chmod 777 $FOLDER_NAME

cat <<EOF >> /etc/samba/smb.conf

[publico]

path = $FOLDER_NAME
writable = yes
guest ok = yes
guest only = yes

EOF

systemctl restart smbd
systemctl status smbd
systemctl enable smbd


