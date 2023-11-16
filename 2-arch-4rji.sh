#!/bin/zsh

# Mover la carpeta Wallpaper a ~/.config
mv ~/4rji/Wallpaper ~/.config

cp kitty/* ~/.config/kitty/ 



# Instalar paquetes necesarios
sudo pacman -Syu --noconfirm neovim 
sudo pacman -Syu --noconfirm  zip
sudo pacman -Syu --noconfirm  fzf
sudo pacman -Syu --noconfirm lsd 
sudo pacman -Syu --noconfirm bat 
sudo pacman -Syu --noconfirm tldr 
sudo pacman -Syu --noconfirm btop 
sudo pacman -Syu --noconfirm net-tools
sudo pacman -Syu --noconfirm magic-wormhole
sudo pacman -Syu --noconfirm ranger 
sudo pacman -Syu --noconfirm scrub 
sudo pacman -Syu --noconfirm shred 
sudo pacman -Syu --noconfirm openvpn 
sudo pacman -Syu --noconfirm firejail 
sudo pacman -Syu --noconfirm lf 
sudo pacman -Syu --noconfirm proxychains 
sudo pacman -Syu --noconfirm ufw
sudo pacman -Syu --noconfirm zsh
sudo pacman -Syu --noconfirm btop
sudo pacman -Syu --noconfirm trash-cli
sudo pacman -Syu --noconfirm ncdu
sudo pacman -Syu --noconfirm ruby-rouge
sudo pacman -Syu --noconfirm wireguard-tools
sudo pacman -Syu --noconfirm jq
sudo pacman -Syu --noconfirm bc
sudo pacman -Syu --noconfirm nodejs npm
sudo pacman -Syu --noconfirm trash-cli


sudo npm install -g joplin

#backup backintime
git clone https://aur.archlinux.org/backintime.git
cd backin
makepkg -si PKGBUILD

#mkdir $HOME/Downloads/vpnit

unzip Ban1_aa12.zip
mv vpnitos $HOME/Downloads/.vpnitos
sudo mv $HOME/Downloads/.vpnitos/cc.txt /


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

./alias.sh

#mover readme con lista en dos para 4rjic
#./partir_readme
mv README.md binarios


#binarios
sudo mv ~/4rji/binarios/* /usr/bin/
#sudo mv ~/4rji/README.md /usr/bin/

git clone https://aur.archlinux.org/backintime.git
cd backintime
makepkg -si PKGBUILD


# Borrar carpetas
cd ~
rm -rf 4rji backintime Music Pictures Public Templates Videos


# Limpiar y actualizar sistema
sudo pacman -Syyu --noconfirm
