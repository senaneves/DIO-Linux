#! /bin/bash

echo "Criando Usuarios"

useradd conv1 -c "Convidado 001" -m -s /bin/bash -p $(openssl passwd -6 Senha1251)
passwd -e conv1

useradd conv2 -c "Convidado 002" -m -s /bin/bash -p $(openssl passwd -6 Senha1251)
passwd -e conv2

echo "Finalizado"
