# .dotfiles

Meus arquivos de configuração e preparação do meu desktop no Plasma KDE.

### Preparando o Ambiente

* [ ] Instalar o Dropbox
  ```
  sudo pacman -Syy dropbox
  ```
* [ ] Criar o diretório (no UaiSO já está no Skel)
  ```
  mkdir -p ~/.bkpdbox
  ```
* [ ] Colocar as credenciais de acesso ao DropBox
* [ ] Alterar a localização do diretório do Dropbox para:
  ```
  ~/.bkpdbox/Dropbox
  ```
* [ ] Fazer a sincronização seletiva desmarcardo os diretórios:

  *Backups* e *Usuarios* (desmarcar os outros usuários)
* [ ] Remover seus diretórios da ~/ e criar os links simbólicos:
  ```
  rm -rf ~/Documentos && ln -s ~/.bkpdbox/Dropbox/Documentos ~/Documentos
  rm -rf ~/Imagens && ln -s ~/.bkpdbox/Dropbox/Imagens ~/Imagens
  rm -rf ~/Músicas && ln -s ~/.bkpdbox/Dropbox/Musicas ~/Músicas
  rm -rf ~/Vídeos && ln -s ~/.bkpdbox/Dropbox/Videos ~/Vídeos
  rm -rf ~/Público && ln -s ~/.bkpdbox/Dropbox/Publico ~/Público
  rm -rf ~/Desenvolvimento && ln -s ~/.bkpdbox/Dropbox/Desenvolvimento ~/Desenvolvimento
  rm -rf ~/Projetos && ln -s ~/.bkpdbox/Dropbox/Projetos ~/Projetos
  rm -rf ~/Programas && ln -s ~/.bkpdbox/Dropbox/Programas ~/Programas
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
  
  
 ```
  rm -Rf ~/.gitconfig
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.gitconfig ~/.gitconfig
  ```
  
 ```
  rm -Rf ~/.ssh
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.ssh ~/.ssh
  ```
  
   ```
  rm -Rf ~/.gnupg
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.gnupg ~/.gnupg
  ```
  
  ```
  rm Rf ~/.wine
  ln -s ~/.bkpdbox/Dropbox/Usuarios/$USER/.local/share/winbox ~/.local/share/winbox
  ```
  
