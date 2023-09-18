#!/bin/bash

# Limpa a tela
clear 

# Laço de repetição While enquanto verdadeiro
while true; do
    echo -e "Qual atalho do NANO quer aprender?\nExemplo: Copiar, Recortar, Colar, etc\n"
    read cmd

    # Converta a entrada para letras minúsculas para fazer a comparação
    cmd_lower=$(echo "$cmd" | tr '[:upper:]' '[:lower:]')

    if [ "$cmd_lower" == "copiar" ]; then
        echo -e "\e[32mUse ALT + 6\e[0m"

    elif [ "$cmd_lower" == "recortar" ] || [ "$cmd_lower" == "cortar" ]; then
        echo -e "\e[32mUse CTRL + K\e[0m"

    elif [ "$cmd_lower" == "colar" ]; then
        echo -e "\e[32mUse CTRL + U\e[0m"

    elif [ "$cmd_lower" == "selecionar" ]; then
        echo -e "\e[32mUse ALT + A\e[0m"

    else
        echo -e "\e[31mAtalho Inexistente.\e[0m"
    fi

    echo "Deseja aprender outro atalho? Digite 'sim' para continuar ou tecle ENTER para encerrar o programa:"
    read resposta

    resposta_lower=$(echo "$resposta" | tr '[:upper:]' '[:lower:]')

    if [ "$resposta_lower" != "sim" ]; then
        echo "Programa encerrado."
        break
    fi
done
