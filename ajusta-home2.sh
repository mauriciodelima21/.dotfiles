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
  "ToolBoxUser"
  "ToolBoxAdmin"
  "Teste"
)

# Define o diretório de backup
backup_dir="$HOME/bkp_bkpdbox_$(date +%Y%m%d_%H%M%S)"

# Pergunta se deseja fazer backup dos arquivos e diretórios em $HOME
read -p "Deseja fazer backup dos arquivos e diretórios em $HOME antes de criar os links simbólicos? [S/n] " backup_response

if [[ "$backup_response" =~ ^[Ss]$ || -z "$backup_response" ]]; then
  echo "Criando backup em $backup_dir..."
  mkdir -p "$backup_dir"

  # Move os arquivos e diretórios em $HOME para o diretório de backup
  for item in "$HOME"/*; do
    item_name=$(basename "$item")
    if [[ -d "$item" && ! -L "$item" ]]; then
      echo "Movendo diretório $item_name para $backup_dir..."
      mv "$item" "$backup_dir"
    elif [[ -f "$item" && ! -L "$item" ]]; then
      echo "Movendo arquivo $item_name para $backup_dir..."
      mv "$item" "$backup_dir"
    fi
  done
fi

# Define a função para criar o link simbólico
function link_dir {
  local dir=$1
  local src="$base_dir/$dir"
  local dest="$HOME/$dir"

  # Se o diretório de destino já for um link simbólico, apenas exibe uma mensagem
  if [ -L "$dest" ]; then
    echo "O diretório $dir já está sendo utilizado como um link simbólico. Nada será feito."
    return
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
