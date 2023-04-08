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
  rm -rf ~/Documentos && ls -s ~/.bkpdbox/Dropbox/Documentos ~/Documentos
  rm -rf ~/Imagens && ln -s ~/.bkpdbox/Dropbox/Imagens ~/Imagens
  rm -rf ~/Músicas && ln -s ~/.bkpdbox/Dropbox/Musicas ~/Músicas
  rm -rf ~/Vídeos && ln -s ~/.bkpdbox/Dropbox/Videos ~/Vídeos
  rm -rf ~/Público && ln -s ~/.bkpdbox/Dropbox/Publico ~/Público
  rm -rf ~/Desenvolvimento && ln -s ~/.bkpdbox/Dropbox/Desenvolvimento ~/Desenvolvimento
  ```
