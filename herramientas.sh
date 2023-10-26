#!/bin/zsh


# adding wallpaper for me

#login picture #Directorio de las imagenes del login in
#cd /usr/share/desktop-base/kali-theme/login/

sudo cp ~/4rji/Wallpaper/background.png /usr/share/desktop-base/kali-theme/login/background


#directorio de inicio de sesion de del grub
#sudo cp -r background.png /boot/grub/themes/kali/grub-4x3.png
#sudo cp -r background.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/4rji/Wallpaper/background4x3.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/4rji/Wallpaper/background4x3.png /boot/grub/themes/kali/grub-4x3.png
sudo cp -r ~/4rji/Wallpaper/jack-dragon2_2048x2048.png /boot/grub/background.png
sudo update-grub

sudo mv ~/4rji/Wallpaper ~/.config


#mkdir $HOME/Downloads/vpnit
sudo apt install zip -y
unzip Ban1_aa12.zip
mv vpnitos $HOME/Downloads/.vpnitos
sudo mv $HOME/Downloads/.vpnitos/cc.txt /
sudo apt update

chmod +x fix-4rji.sh tmux_zsh.sh

#mover readme con lista en dos para 4rjic
./partir_readme
cp -f README.md ~/4rji/binarios

#binarios
sudo cp -f ~/4rji/binarios/* /usr/bin/
#sudo mv ~/4rji/README.md /usr/bin/


#algunos script que se deben ejecutar al inicio para instalacion
agregarpgg

#paso 2 instalar herramientas, crear alias, y mover binarios
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

#sudo apt install bc -f


./fix-4rji.sh
./tmux_zsh.sh

# Clonar fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install


./alias.sh

cd ~
#borrar todo

sudo rm -rf 4rji 

