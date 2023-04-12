#!/bin/bash

# Define o diretório base
base_dir="$HOME/.bkpdbox/Dropbox"

# Define a lista de subdiretórios a serem linkados
dirs=(
  "Documentos"
  "Imagens"
  "Músicas"
  "Vídeos"
  "Público"
  "Desenvolvimento"
  "Projetos"
  "Programas"
  "NovoDiretorio"
)

# Define a função para criar o link simbólico
function link_dir {
  local dir=$1
  local src="$base_dir/$dir"
  local dest="$HOME/$dir"

  # Cria o diretório de destino em $base_dir, se necessário
  if [ ! -d "$base_dir/$dir" ]; then
    echo "Criando diretório $base_dir/$dir..."
    mkdir -p "$base_dir/$dir"
  fi

  # Renomeia o diretório de destino, se existir
  if [ -d "$dest" ]; then
    local bak="$dest.bak"
    echo "Renomeando $dest para $bak..."
    mv "$dest" "$bak"
  fi

  # Cria o link simbólico
  echo "Criando link simbólico para $src em $dest..."
  ln -s "$src" "$dest"
}

# Percorre a lista de subdiretórios e cria os links simbólicos
for dir in "${dirs[@]}"; do
  link_dir "$dir"
done
