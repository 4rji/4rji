#!/bin/zsh

# Mover la carpeta Wallpaper a ~/.config
mv ~/4rji/Wallpaper ~/.config

# Instalar paquetes necesarios
sudo pacman -S neovim 
sudo pacman -S zip
sudo pacman -S fzf
sudo pacman -S lsd 
sudo pacman -S bat 
sudo pacman -S tldr 
sudo pacman -S btop 
sudo pacman -S net-tools
sudo pacman -S magic-wormhole
sudo pacman -S ranger 
sudo pacman -S scrub 
sudo pacman -S shred 
sudo pacman -S openvpn 
sudo pacman -S firejail 
sudo pacman -S lf 
sudo pacman -S proxychains 
sudo pacman -S ufw
sudo pacman -S zsh
sudo pacman -S git
sudo pacman -S base-devel
sudo pacman -S linux-headers
sudo pacman -S dolphin 


git clone https://aur.archlinux.org/backintime.git
cd backin
makepkg -si PKGBUILD

#mkdir $HOME/Downloads/vpnit

unzip Ban1_aa12.zip
mv vpnitos $HOME/Downloads/.vpnitos
sudo mv $HOME/Downloads/.vpnitos/cc.txt /

#algunos script que se deben ejecutar al inicio para instalacion
#agregarpgg

#Neovim
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install




git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 

./alias.sh

#mover readme con lista en dos para 4rjic
#./partir_readme
mv README.md binarios

#binarios
sudo mv ~/4rji/binarios/* /usr/bin/
#sudo mv ~/4rji/README.md /usr/bin/


# Borrar carpetas
rm -rf Public Videos Music Pictures Templates 4rji ScreenShots surfeandoano Wallpaper




# Limpiar y actualizar sistema
sudo pacman -Syyu --noconfirm
