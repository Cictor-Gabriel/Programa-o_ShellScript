#!/bin/bash

# Criar diretório para as pastas
mkdir -p pastas_aleatorias

# Inicializar contador
i=1

# Loop para criar as pastas com nomes aleatórios
while [ $i -le 5000 ]; do
    nome_pasta=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)
    mkdir "pastas_aleatorias/$nome_pasta"
    echo "Pasta $nome_pasta criada."
    i=$((i + 1))
done

echo "Criação das pastas concluída."
Neste exemplo, cada pasta é nomeada com uma sequência aleatória de caracteres alfanuméricos de 10 caracteres. Salve o script, dê permissão de execução com chmod +x nome_do_script.sh e execute-o com ./nome_do_script.sh. Certifique-se de entender os possíveis impactos antes de executar o script.





