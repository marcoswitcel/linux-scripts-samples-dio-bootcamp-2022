#!/bin/bash

echo "Instalando o banco MySQL8.0"
sudo apt install mysql-server-8.0 -y

echo "Rodando script no banco"
sudo mysql --user="root" < ./create-database.sql
