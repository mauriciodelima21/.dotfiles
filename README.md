# .dotfiles

Meus arquivos de configuração e preparação do meu desktop no Plasma KDE.

### Preparando o Ambiente

* [ ] Instalar o Syncthing (no UaiSO J
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
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/chromium ~/.config/chromium
  ```

  Google Chrome
  ```
  rm -Rf ~/.config/google-chrome 
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/google-chrome ~/.config/google-chrome
  ```

  Discord
  ```
  rm -Rf ~/.config/discord 
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/discord ~/.config/discord
  ```

  Falkon
   ```
  rm -Rf ~/.config/falkon
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/falkon ~/.config/falkon
  ```
  
  Brave Browser
   ```
  rm -Rf ~/.config/BraveSoftware
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/BraveSoftware ~/.config/BraveSoftware
  ```
  Rambox
   ```
  rm -Rf ~/.config/rambox
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/rambox ~/.config/rambox
  ```
  Visual Studio Code
     ```
  rm -Rf ~/.vscode
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.vscode ~/.vscode
  rm -Rf ~/.config/Code
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/Code ~/.config/Code
  ```
  Termius
   ```
  rm -Rf ~/.config/Termius
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/Termius ~/.config/Termius
  ```
  Remmina
   ```
  rm -Rf ~/.config/remmina
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/remmina ~/.config/remmina
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.local/share/remmina ~/.local/share/remmina
  
  ```
  rclone
  ```
  rm -Rf ~/.config/rclone
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.config/rclone ~/.config/rclone
  ```
  
  Firefox
  ```
  rm -Rf  ~/.mozilla 
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.mozilla ~/.mozilla 
  ```
  
  Git 
  ```
  rm -Rf ~/.gitconfig
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.gitconfig ~/.gitconfig
  ```
  ssh
  ```
  rm -Rf ~/.ssh
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.ssh ~/.ssh
  ```
  gnupg
  ```
  rm -Rf ~/.gnupg
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.gnupg ~/.gnupg
  ```
  
  winbox
  ```
  rm Rf ~/.wine
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.local/share/winbox ~/.local/share/winbox
  ```
  
