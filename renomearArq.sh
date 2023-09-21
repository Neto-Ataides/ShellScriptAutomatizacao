#!/bin/bash

# Diretório onde os arquivos PDF estão localizados
diretorio="/home/user/dir" #Indicar o caminho do seu diretório

# Verifica se o diretório existe
if [ -d "$diretorio" ]; then
  cd "$diretorio" || exit

  # Itera sobre todos os arquivos PDF no diretório
  for arquivo in *.pdf; do
    if [ -f "$arquivo" ]; then
      # Remove os espaços do nome do arquivo
      novo_nome_arquivo=$(echo "$arquivo" | tr -d ' ')

      # Renomeia o arquivo com o novo nome
      mv "$arquivo" "$novo_nome_arquivo"
      echo "Renomeado: $arquivo -> $novo_nome_arquivo"
    fi
  done

  echo "Renomeação concluída."
else
  echo "O diretório especificado não existe."
fi

