#!/bin/bash

# Diretório base onde os repositórios serão baixados
base_dir="$HOME/Dev/GitHub"

# Verifica se o diretório base existe, caso contrário, cria
if [ ! -d "$base_dir" ]; then
    mkdir -p "$base_dir"
fi

# Nome da organização no GitHub
org_name="UaiSO21"

# Token de acesso pessoal do GitHub
access_token="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"

# URL da API para listar repositórios da organização
api_url="https://api.github.com/orgs/$org_name/repos"

# Comando curl para obter a lista de repositórios
response=$(curl -s -H "Authorization: token $access_token" "$api_url")

# Extrai os URLs HTTPS dos repositórios públicos
repo_urls=($(echo "$response" | grep -o 'https://github.com/[^"]*/[^"]*'))

# Loop através dos URLs dos repositórios
for repo_url in "${repo_urls[@]}"; do
    # Extrai o nome do repositório
    repo_name=$(basename "$repo_url" | sed 's/\.git$//')

    # Diretório onde o repositório será clonado
    repo_dir="$base_dir/$repo_name"

    # Verifica se o diretório do repositório já existe, caso contrário, realiza o clone
    if [ ! -d "$repo_dir" ]; then
        git clone "$repo_url" "$repo_dir"
    else
        echo "O repositório $repo_name já existe. Pulando o clone."
    fi
done
