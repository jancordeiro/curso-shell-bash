#!/bin/bash
# Limpa a tela
clear

# Solicita do usuario o email e cria a variavel email
read -p "Digite seu e-mail: " email

# Condição Composta
# Se o email digitado conter em cadastros.txt
# Exibe a mensagem de usuario logado
# Senão, exibe outra mensagem de email invalido
if grep -q "$email" ./cadastros.txt; then
  echo "Usuario LOGADO com Sucesso"
  read -p "Aperte ENTER para entrar" enter
  ./calculo.sh
else
  echo "Email inválido"
fi
