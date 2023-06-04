#!/bin/bash
clear

echo "+----------------------------+"
echo "| Calculadora no Terminal    |"
echo "|             Version 1.0    |"
echo "+----------------------------+"
echo ""
echo ""

read -p "Digite um número: " numx
read -p "Digite o operador +, -, * ou /: " xbc
read -p "Digite outro número: " numy

res=`echo "scale=2; $numx $xbc $numy" | bc`

echo "Resultado: $res
