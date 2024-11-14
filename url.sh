#!/bin/bash

# Verifica se a URL foi passada como argumento
if [ -z "$1" ]; then
  echo "Uso: $0 <nova_url>"
  exit 1
fi

NOVA_URL=$1
ARQUIVO="./quickcheck-front/src/services/axios.js"

# Verifica se o arquivo axios.js existe
if [ ! -f "$ARQUIVO" ]; then
  echo "Arquivo $ARQUIVO não encontrado!"
  exit 1
fi

# Substitui http://localhost:8080 pela nova URL no arquivo
sed -i.bak "s|http://localhost:8080|$NOVA_URL|g" "$ARQUIVO"

# Exibe uma mensagem de sucesso
echo "Substituição concluída. O arquivo original foi salvo como axios.js.bak."