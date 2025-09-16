#!/usr/bin/env bash

sudo mkdir -p /respaldos

sudo cp zshrc.original /respaldos
cp kitty/* ~/.config/kitty/ 

#sudo mv kitty.png /usr/share/icons/hicolor/256x256/apps/kitty.png
#gtk-update-icon-cache en caso de que no cambie el icono

#kitty icon logo conver png to svg
#inkscape -z -e kitty.png -l kitty.svg
#kitty icon logo
#buscar find /usr/share/icons/ -iname "*kitty*"

sudo cp kitty.png /usr/share/icons/hicolor/256x256/apps/kitty.png
sudo cp kitty.svg /usr/share/icons/Flat-Remix-Blue-Dark/apps/scalable/appimagekit-kitty.svg
sudo cp kitty.svg /usr/share/icons/Flat-Remix-Blue-Dark/apps/scalable/kitty.svg
sudo cp kitty.svg /usr/share/icons/hicolor/scalable/apps/kitty.svg




#login picture #Directorio de las imagenes del login in
#cd /usr/share/desktop-base/kali-theme/login/
sudo cp .zshrc.original ~
sudo cp ~/4rji/Wallpaper/background.png /usr/share/desktop-base/kali-theme/login/background


#directorio de inicio de sesion de del grub
#sudo cp -r background.png /boot/grub/themes/kali/grub-4x3.png
#sudo cp -r background.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/4rji/Wallpaper/background.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/4rji/Wallpaper/background4x3.png /boot/grub/themes/kali/grub-4x3.png
sudo cp -r ~/4rji/Wallpaper/jack-dragon2_2048x2048.png /boot/grub/background.png

sudo cp .zshrc.original ~
sudo cp ~/4rji/Wallpaper/background.png /usr/share/desktop-base/kali-theme/login/background

sudo cp ~/.config/Wallpaper/grub-16x9/02/grub-16x9.png  /usr/share/grub/themes/kali/grub-4x3.png
sudo cp ~/.config/Wallpaper/guacamaya.jpg /usr/share/grub/themes/kali/grub-16x9.png

#la imagen despues del grub es esta corregir la ruta:
#/usr/share/grub/themes/kali/grub-16x9.png

#debian
sudo cp ~/.config/Wallpaper/background4x3.png /usr/share/desktop-base/ceratopsian-theme/grub/grub-4x3.png
sudo cp ~/.config/Wallpaper/background.png /usr/share/desktop-base/ceratopsian-theme/grub/grub-16x9.png 


#algunos script que se deben ejecutar al inicio para instalacion

sudo mv ~/4rji/Wallpaper ~/.config







#paso 2 instalar herramientas, crear alias, y mover binarios

# Lista de paquetes a instalar
paquetes=("dnsutils" "jq" "systemd" "iproute2" "bat" "python3-pip" "net-tools" 
          "wormhole" "ranger" "scrub" "shred" "curl" "kitty" "tmux" "dialog" 
          "iptables" "openvpn" "nmap" "mesa-utils" "lm-sensors" "firejail" 
          "lf" "proxychains" "neofetch" "lsd" "btop" "tldr" "backintime-qt" 
          "trash-cli" "ncdu" "ruby-rouge"  "bc" "ufw")

# Función para verificar si un paquete está instalado
paquete_instalado() {  
    dpkg -l "$1" | grep -q '^ii'  
}

# Instalación de los paquetes
for paquete in "${paquetes[@]}"; do
    if paquete_instalado "$paquete"; then
        echo "El paquete $paquete ya está instalado."
    else
        echo "Instalando el paquete $paquete..."
        sudo apt-get install -y "$paquete"
    fi
done
