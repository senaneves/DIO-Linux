#! /bin/bash


# o root é dono dos diretórios
# Todos os usuarios terão permissão total dentro da pasta publico
# Usuarios do grupo terao permissão total dentro do seu respectivo diretório
# Usuarios não terão direito leitura, escrita e execução de diretórios de outros grupos
# Colocar script no GitHub

echo "Criando Diretórios"

mkdir /publico /adm /ven /sec

echo "Diretorios criados com sucesso"

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso"

echo "Criando os usuarios"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -6 Senha123)

echo "Usuarios criados com sucesso"

echo "Atribuindo os diretórios ao dono (root não muda) ao  respectivo grupo"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Atribuição do diretorio realizada com sucesso"

echo "Atribuindo os usuarios aos respectivos grupos"
usermod -G carlos,GRP_ADM carlos
usermod -G maria,GRP_ADM maria
usermod -G joao,GRP_ADM joao

usermod -G debora,GRP_VEN debora
usermod -G sebastiana,GRP_VEN sebastiana
usermod -G roberto,GRP_VEN roberto

usermod -G josefina,GRP_SEC josefina
usermod -G amanda,GRP_SEC amanda
usermod -G rogerio,GRP_SEC rogerio

echo "atribuição dos usuários aos grupos realizada com sucesso"

echo "Alterando permissões dos diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões alteradas com sucesso"

echo "<<<<<<<<<<<<<FIM>>>>>>>>>>>>>>>>>>>>"

#! /bin/bash


# o root é dono dos diretórios
# Todos os usuarios terão permissão total dentro da pasta publico
# Usuarios do grupo terao permissão total dentro do seu respectivo diretório
# Usuarios não terão direito leitura, escrita e execução de diretórios de outros grupos
# Colocar script no GitHub

echo "Criando Diretórios"

mkdir /publico /adm /ven /sec

echo "Diretorios criados com sucesso"

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso"

echo "Criando os usuarios"
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -6 Senha123)

echo "Usuarios criados com sucesso"

echo "Atribuindo os diretórios ao dono (root não muda) ao  respectivo grupo"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Atribuição do diretorio realizada com sucesso"

echo "Atribuindo os usuarios aos respectivos grupos"
usermod -G carlos,GRP_ADM carlos
usermod -G maria,GRP_ADM maria
usermod -G joao,GRP_ADM joao

usermod -G debora,GRP_VEN debora
usermod -G sebastiana,GRP_VEN sebastiana
usermod -G roberto,GRP_VEN roberto

usermod -G josefina,GRP_SEC josefina
usermod -G amanda,GRP_SEC amanda
usermod -G rogerio,GRP_SEC rogerio

echo "atribuição dos usuários aos grupos realizada com sucesso"

echo "Alterando permissões dos diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões alteradas com sucesso"

echo "<<<<<<<<<<<<<FIM>>>>>>>>>>>>>>>>>>>>"

