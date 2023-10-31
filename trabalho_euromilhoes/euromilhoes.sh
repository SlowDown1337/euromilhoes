#!/bin/bash
figlet "Slow"
echo "Bem-vindo! Este é o script de geração de chaves do Euro-Milhões."

while true; do
    numeros=()
    i=0

    while [ ${#numeros[@]} -lt 5 ]; do
        novo_numero=$(( ( RANDOM % 50 ) + 1 ))
        if [[ ! " ${numeros[@]} " =~ " $novo_numero " ]]; then
            numeros[$i]=$novo_numero
            ((i++))
        fi
    done

    for (( j=0; j<2; j++ )); do
        numero_estrela=$(( ( RANDOM % 12 ) + 1 ))
        echo ---------------------
        echo " ★: $numero_estrela" 
        echo ---------------------
    done

    for numero in "${numeros[@]}"; do
        echo ---------------------------
        echo "Numero sorteado: $numero"
        echo ---------------------------
    done

    read -p "Deseja gerar outra chave do Euro-Milhões? (s/n): " resposta
    if [ "$resposta" != "s" ]; then
        break
    fi
done
