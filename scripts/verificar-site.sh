#!/bin/bash
# Limpa a tela da sessão atual do shell
clear

# Exibe um cabeçalho estilizado em arte ASCII
echo ""
echo "██╗   ██╗███████╗██████╗ ██╗███████╗██╗ ██████╗ █████╗     ██╗   ██╗██████╗ ██╗     "
echo "██║   ██║██╔════╝██╔══██╗██║██╔════╝██║██╔════╝██╔══██╗    ██║   ██║██╔══██╗██║     "
echo "██║   ██║█████╗  ██████╔╝██║█████╗  ██║██║     ███████║    ██║   ██║██████╔╝██║     "
echo "╚██╗ ██╔╝██╔══╝  ██╔══██╗██║██╔══╝  ██║██║     ██╔══██║    ██║   ██║██╔══██╗██║     "
echo " ╚████╔╝ ███████╗██║  ██║██║██║     ██║╚██████╗██║  ██║    ╚██████╔╝██║  ██║███████╗"
echo "  ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝     ╚═════╝ ╚═╝  ╚═╝╚══════╝"
echo ""

# Pede ao usuário digitar uma URL para ser testada
# seguido das instuções de como deve ser digitado
echo -e "Digita a baixo a URL que deseja verificar usando\no prefixo http:// ou https:// seguido da URL.\nO uso do WWW é opcional.\n"
read -p "Digite a URL: " site

# Solicita o cabeçalho HTTP através do cURL em modo silencioso e direcionando a saído para /dev/null
response=$(curl -s -o /dev/null -w "%{http_code}" "$site")

# Verifica se obteve o código 200 do cabeçalho HTTP
if [ "$response" == "200" ]; then
    echo -e "\n+---------------------+"
    echo -e "|\e[1;32mSite ONLINE :)\e[0m       |"
    echo -e "+---------------------+\n"
else
    echo -e "\n+---------------------+"
    echo -e "|\e[1;31mSite OFFLINE :(\e[0m      |"
    echo -e "+---------------------+\n"
fi
