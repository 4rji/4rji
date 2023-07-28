#!/usr/bin/env zsh

sudo apt install lsd -y

# Descargar el repositorio
git clone https://github.com/4rji/polybar.git

# Navegar al directorio clonado
cd polybar

# Dar permisos de ejecución al archivo install.sh
chmod +x install.sh

# Ejecutar el script de instalación
./install.sh

# adding wallpaper for me
mv Wallpaper ~/.config

#directorio de inicio de sesion de del grub
#sudo cp -r background.png /boot/grub/themes/kali/grub-4x3.png
#sudo cp -r background.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/.config/Wallpaper/jack-dragon2_2048x2048.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/.config/Wallpaper/jack-dragon2_2048x2048.png /boot/grub/themes/kali/grub-4x3.png
sudo cp -r ~/.config/Wallpaper/jack-dragon2_2048x2048.png /boot/grub/background.png
sudo update-grub



#Directorio de las imagenes del login in
#cd /usr/share/desktop-base/kali-theme/login/


sudo cp ~/.config/Wallpaper/jack-dragon2_2048x2048.png /usr/share/desktop-base/kali-theme/login/background



sleep 4

kill -9 -1


#sudo rm -f 4rji.sh

#kill -9 -1