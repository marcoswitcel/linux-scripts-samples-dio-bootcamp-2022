#!/bin/bash

apt-get update
apt-get upgrade -y

apt install apache2 -y

# Para checar o status pode ser usado o comando abaixo
cat <<EOF

# Para testar o status do servidor apache2
systemctl status apache2

EOF

echo "Clonando um projeto Web para exemplo e teste de acesso"

cd /var/www/html/
git clone https://github.com/marcoswitcel/teapot-basics-of-3d-rendering.git

# Descobrindo possível IP
IP=$(hostname -I | awk '{print $1}')

cat <<EOF

Aplicação acessível através dos seguintes links:
*  http://localhost/teapot-basics-of-3d-rendering/
*  http://$IP/teapot-basics-of-3d-rendering/

EOF

