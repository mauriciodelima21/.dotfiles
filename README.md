# .dotfiles

Meus arquivos de configuração e preparação do meu desktop no Plasma KDE.

### Preparando o Ambiente

* [ ] Instalar o Syncthing (no UaiSO j
  ```
  sudo pacman -Syy syncthing syncthingtray
  ```
* [ ] Criar o diretório (no UaiSO já está no Skel)
  ```
  mkdir -p ~/.sync/$USER
  ```
* [ ] Fazer os ajustes para sincronizar o diretório do usuário
      
      + Escolher o diretório de destino
      + Excluir o diretório padrão do SyncThing
      + Aguardar o sincronismo

* [ ] Remover seus diretórios da ~/ e criar os links simbólicos:
  ```
  rm -rf ~/Documentos && ln -s ~/.sync/$USER/Documentos ~/Documentos
  rm -rf ~/Imagens && ln -s ~/.sync/$USER/Imagens ~/Imagens
  rm -rf ~/Músicas && ln -s ~/.sync/$USER/Músicas ~/Músicas
  rm -rf ~/Vídeos && ln -s ~/.sync/$USER/Vídeos ~/Vídeos
  rm -rf ~/Público && ln -s ~/.sync/$USER/Público ~/Público
  rm -rf ~/Desenvolvimento && ln -s ~/.sync/$USER/Desenvolvimento ~/Desenvolvimento
  rm -rf ~/Projetos && ln -s ~/.sync/$USER/Projetos ~/Projetos
  rm -rf ~/Programas && ln -s ~/.sync/$USER/Programas ~/Programas
  rm -rf ~/Modelos && ln -s ~/.sync/$USER/Modelos ~/Modelos
  
  ```
* [ ] Mover alguns diretórios de .config:
   
  Remmina
   ```
  rm -Rf ~/.config/remmina
  ln -s ~/.sync/$USER/.config/remmina ~/.config/remmina
  ln -s ~/.sync/$USER/.local/share/remmina ~/.local/share/remmina
  
  ```
  rclone
  ```
  rm -Rf ~/.config/rclone
  ln -s ~/.sync/$USER/.config/rclone ~/.config/rclone
  ```
   
  Git 
  ```
  rm -Rf ~/.gitconfig
  ln -s ~/.sync/$USER/.gitconfig ~/.gitconfig
  ```
  
  ssh
  ```
  rm -Rf ~/.ssh
  ln -s ~/.sync/$USER/.ssh ~/.ssh
  ```
  
  gnupg
  ```
  rm -Rf ~/.gnupg
  ln -s ~/.sync/$USER/.gnupg ~/.gnupg
  ```
  
  winbox
  ```
  rm -Rf ~/.wine
  ln -s ~/.sync/$USER/.local/share/winbox ~/.local/share/winbox
  ```
  
  krdc
  ```
  rm -Rf ~/.local/share/krdc
  ln `-s ~/.sync/mol/.local/share/krdc ~/.local/share/krdc
  ```
  
  konsole
  ```
  rm -Rf ~/.local/share/konsole
  ln -s ~/.sync/mol/.local/share/konsole ~/.local/share/konsole
  ```
 
