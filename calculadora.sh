#!/bin/bash

# Solicita o primeiro número
echo "Digite o primeiro número:"
read num1

# Solicita o segundo número
echo "Digite o segundo número:"
read num2

# Solicita a operação
echo "Escolha a operação:"
echo "1. Soma"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
read operacao

# Executa a operação escolhida
case $operacao in
  1) resultado=$(($num1 + $num2));;
  2) resultado=$(($num1 - $num2));;
  3) resultado=$(($num1 * $num2));;
  4) 
    if [ $num2 -eq 0 ]; then
      echo "Erro: Divisão por zero não permitida."
      exit 1
    else
      resultado=$(($num1 / $num2))
    fi
    ;;
  *) echo "Operação inválida"; exit 1 ;;
esac

# Exibe o resultado
echo "O resultado é: $resultado"

