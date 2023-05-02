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
  
  Chromium
  ```
  rm -Rf ~/.config/chromium
  ln -s ~/.sync/$USER/.config/chromium ~/.config/chromium
  ```

  Google Chrome
  ```
  rm -Rf ~/.config/google-chrome 
  ln -s ~/.sync/$USER/.config/google-chrome ~/.config/google-chrome
  ```

  Discord
  ```
  rm -Rf ~/.config/discord 
  ln -s ~/.sync/$USER/.config/discord ~/.config/discord
  ```

  Falkon
   ```
  rm -Rf ~/.config/falkon
  ln -s ~/.sync/$USER/.config/falkon ~/.config/falkon
  ```
  
  Brave Browser
   ```
  rm -Rf ~/.config/BraveSoftware
  ln -s ~/.sync/$USER/.config/BraveSoftware ~/.config/BraveSoftware
  ```
  Rambox
   ```
  rm -Rf ~/.config/rambox
  ln -s ~/.sync/$USER/.config/rambox ~/.config/rambox
  ```
  Visual Studio Code
     ```
  rm -Rf ~/.vscode
  ln -s ~/.sync/$USER/.vscode ~/.vscode
  rm -Rf ~/.config/Code
  ln -s ~/.sync/$USER/.config/Code ~/.config/Code
  ```
  
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
  
  Firefox
  ```
  rm -Rf  ~/.mozilla 
  ln -s ~/.sync/$USER/.mozilla ~/.mozilla 
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
  
