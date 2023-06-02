#!/bin/bash

# Nome da organização no GitHub
org_name="UaiSO21"

# Token de acesso pessoal do GitHub
access_token="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"

# URL da API para listar repositórios da organização
api_url="https://api.github.com/orgs/$org_name/repos"

# Comando curl para obter a lista de repositórios
response=$(curl -s -H "Authorization: token $access_token" "$api_url")

# Extrai os URLs dos repositórios públicos
repo_urls=$(echo "$response" | grep -o 'https://github.com/[^"]*/[^"]*')

# Loop através dos URLs dos repositórios
for repo_url in $repo_urls; do
    # Extrai o nome do repositório
    repo_name=$(basename "$repo_url")
    
    # Diretório onde o repositório será clonado
    base_dir="$HOME/Dev/GitHub"
    
    # Verifica se o diretório do repositório já existe, caso contrário, realiza o clone
    if [ ! -d "$repo_dir" ]; then
        git clone "$repo_url" "$repo_dir"
    else
        echo "O repositório $repo_name já existe. Pulando o clone."
    fi
done
