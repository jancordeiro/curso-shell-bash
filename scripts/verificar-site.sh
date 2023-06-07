#!/bin/bash
clear

read -p "Digite a URL: " site

response=$(curl -s -o /dev/null -w "%{http_code}" "$site")

if [ "$response" == "200" ]; then
    echo -e "\n+---------------------+"
    echo -e "|\e[1;32mSite ONLINE :)\e[0m       |"
    echo -e "+---------------------+\n"
else
    echo -e "\n+---------------------+"
    echo -e "|\e[1;31mSite OFFLINE :(\e[0m      |"
    echo -e "+---------------------+\n"
fi
