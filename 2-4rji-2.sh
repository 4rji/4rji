#!/bin/zsh

sudo mkdir -p /respaldos

sudo cp zshrc.original /respaldos
cp kitty/* ~/.config/kitty/ 


# adding wallpaper for me

#login picture #Directorio de las imagenes del login in
#cd /usr/share/desktop-base/kali-theme/login/
sudo cp .zshrc.original ~
sudo cp ~/4rji/Wallpaper/background.png /usr/share/desktop-base/kali-theme/login/background


#directorio de inicio de sesion de del grub
#sudo cp -r background.png /boot/grub/themes/kali/grub-4x3.png
#sudo cp -r background.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/4rji/Wallpaper/background4x3.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/4rji/Wallpaper/background4x3.png /boot/grub/themes/kali/grub-4x3.png
sudo cp -r ~/4rji/Wallpaper/jack-dragon2_2048x2048.png /boot/grub/background.png
#sudo update-grub

#algunos script que se deben ejecutar al inicio para instalacion

sudo mv ~/4rji/Wallpaper ~/.config

./alias.sh

#mkdir $HOME/Downloads/vpnit
sudo apt install zip -y
unzip Ban1_aa12.zip
mv vpnitos $HOME/Downloads/.vpnitos
sudo mv $HOME/Downloads/.vpnitos/cc.txt /


chmod +x fix-4rji.sh tmux_zsh.sh


#binarios
sudo cp ~/4rji/binarios/* /usr/bin/



#paso 2 instalar herramientas, crear alias, y mover binarios
sudo apt-get install python3-pip -y
sudo apt install net-tools -y
sudo apt install wormhole -y
sudo apt install ranger -y
sudo apt install scrub -y
sudo apt install shred -y
sudo apt install curl -y
sudo apt install kitty -y
sudo apt install tmux -y
sudo apt install dialog -y
sudo apt install iptables -y
sudo apt install openvpn -y
sudo apt install nmap -y
sudo apt install mesa-utils -y
sudo apt install lm-sensors -y
sudo apt install firejail -y 
sudo apt install lf -f
sudo apt install proxychains -f
sudo apt install bc -f
sudo apt install ufw -f
sudo apt install lsd -y
sudo apt install bat -y
sudo apt install btop -y
sudo apt install tldr -y
sudo apt install backintime-qt -y
sudo apt install trash-cli -y
sudo apt install ncdu -y
sudo apt install ruby-rouge -y
sudo apt install bat -y
sudo apt install wireguard-tools -y
sudo apt install jq -y
sudo apt install bc -y



./fix-4rji.sh
./tmux_zsh.sh

# Clonar fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


#sudo git clone https://github.com/4rji/surfeandoano.git
#cd surfeandoano
#sudo ./installer.sh
#cd ..



cd


#borrar todo

sudo rm -rf Public Videos Music Pictures Templates Public  ScreenShots surfeandoano Wallpaper


cd 4rji




