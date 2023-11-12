#!/bin/zsh

# Mover la carpeta Wallpaper a ~/.config
mv ~/4rji/Wallpaper ~/.config

# Instalar paquetes necesarios
sudo pacman -S --noconfirm neovim zip fzf lsd bat net-tools magic-wormhole wormhole ranger scrub shred curl kitty tmux dialog iptables openvpn nmap mesa lm_sensors firejail lf proxychains bc ufw
#sudo pacman -S fzf dont forget this. 


#mkdir $HOME/Downloads/vpnit

unzip Ban1_aa12.zip
mv vpnitos $HOME/Downloads/.vpnitos
sudo mv $HOME/Downloads/.vpnitos/cc.txt /

#algunos script que se deben ejecutar al inicio para instalacion
#agregarpgg

#Neovim

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
