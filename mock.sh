#!/bin/bash

ARQUIVO="./quickcheck/src/main/java/io/bootify/quickcheck/QuickcheckApplication.java"

# Verifica se o arquivo axios.js existe
if [ ! -f "$ARQUIVO" ]; then
  echo "Arquivo $ARQUIVO não encontrado!"
  exit 1
fi

# Insere os dados mockados pela primeira vez
sed -i.bak "s|boolean firstLoad = false;|boolean firstLoad = true;|g" "$ARQUIVO"

# Exibe uma mensagem de sucesso
echo "Substituição concluída. O arquivo original foi salvo como QuickcheckApplication.java.bak."