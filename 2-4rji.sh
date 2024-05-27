#!/bin/bash

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


#la imagen despues del grub es esta corregir la ruta:
#/usr/share/grub/themes/kali/grub-16x9.png



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
 # Con la funcion de que se puede poner un nombre despues del mktem para especificar el nombre del folder.
    function mktem() {
        if [ -n "$1" ]; then
            new_dir=$(mktemp -d /dev/shm/tmp."$1".XXXXXX)
        else
            new_dir=$(mktemp -d /dev/shm/tmp.XXXXXX)
        fi
        
        echo "Directorio creado en: $new_dir"
        cd "$new_dir" || return
        echo "Cambiado al directorio: $PWD"
    }


    # Aquí puedes llamar a la función mktem
    mktem

    git clone --depth 1  https://github.com/4rji/bina.git
    

    sudo mkdir -p /opt/4rji/bin

    sudo cp -f /bina/binarios/* /opt/4rji/bin






#paso 2 instalar herramientas, crear alias, y mover binarios

# Lista de paquetes a instalar
paquetes=("dnsutils" "jq" "systemd" "iproute2" "bat" "python3-pip" "net-tools" 
          "wormhole" "ranger" "scrub" "shred" "curl" "kitty" "tmux" "dialog" 
          "iptables" "openvpn" "nmap" "mesa-utils" "lm-sensors" "firejail" 
          "lf" "proxychains" "neofetch" "lsd" "btop" "tldr" "backintime-qt" 
          "trash-cli" "ncdu" "ruby-rouge" "wireguard-tools" "bc" "ufw")

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


cp neofetch_config.conf ~/.config/neofetch/config.conf

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

sudo ufw allow ssh
sudo ufw status

