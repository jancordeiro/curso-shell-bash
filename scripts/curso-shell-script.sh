#!/bin/bash

# Limpa a  tela da sessão do bash
clear

# Declara variaveis usando a saída do comando date
dia=`date +%d` # Pega o dia atual
mes=`date +%m` # Pega o mês atual
ano=`date +%y` # Pega o ano atual
hora=`date +%H` # Pega a hora atual
min=`date +%M` # Pega o minuto atual

# Declara a variável que mostra a data e hora
# no formato dd/mm/yy - HH:MM
data=`echo "Timestamp $dia/$mes/$ano - $hora:$min"`

# Comandos echo para imprimir na tela
echo "+---------------------------|"
echo "|Faça seu cadastro abaixo:  |"
echo "+---------------------------+"

# Comando read para pegar dados digitados pelo usuario
read -p "Nome Completo: " nome
read -p "Idade: " idade
read -p "E-mail: " email

# Cria variável para acrescentar dados no arquivo .txt
cad=`echo -e "$data\n$nome\n$idade\n$email\n-----" >> cadastros.txt

# Imprime texto e a variavel nome na tela
echo "Cadastrado de $nome efetuado com sucesso."
