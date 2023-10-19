#!/bin/zsh


# adding wallpaper for me

#login picture #Directorio de las imagenes del login in
#cd /usr/share/desktop-base/kali-theme/login/

sudo cp ~/4rji/Wallpaper/background.png /usr/share/desktop-base/kali-theme/login/background


#directorio de inicio de sesion de del grub
#sudo cp -r background.png /boot/grub/themes/kali/grub-4x3.png
#s
sudo mv ~/4rji/Wallpaper ~/.config




#mkdir $HOME/Downloads/vpnit
unzip Ban1_aa12.zip
mv vpnitos $HOME/Downloads/
sudo mv $HOME/Downloads/vpnitos/cc.txt /

chmod +x fix-4rji.sh tmux_zsh.sh

sudo mv ~/4rji/binarios/* /usr/bin/


#fix QUbeOS repositorios
sudo mv sources.list.debian /etc/apt/sources.list.debian
sudo mv sources.list.kali /etc/apt/sources.list.kali
sudo mv firmar_kali_deb /etc/apt/firmar_kali_deb





#paso 2 instalar herramientas, crear alias, y mover binarios



# Agregar alias a .zshrc
echo "alias kalideb='sudo cp /etc/apt/sources.list.kali /etc/apt/sources.list'" >> ~/.zshrc
echo "alias nokali='sudo cp /etc/apt/sources.list.debian /etc/apt/sources.list'" >> ~/.zshrc
echo "alias smbserver='impacket-smbserver smbFolder \$(pwd) -smb2support -username 4rji -password 4rji123'" >> ~/.zshrc
echo "alias rmk='() { scrub -p dod \$1; shred -zun 10 -v \$1; }'" >> ~/.zshrc
echo "alias inst='sudo apt install'" >> ~/.zshrc
echo "alias bas='nano ~/.zshrc'" >> ~/.zshrc
echo "alias basrc='source ~/.zshrc'" >> ~/.zshrc
echo "alias mkt='mkdir content exploits nmap'" >> ~/.zshrc
echo "alias folder='cd /home/natasha/MaquinasHTB/'" >> ~/.zshrc
echo "alias apu='sudo apt update && sudo apt upgrade'" >> ~/.zshrc
echo "alias pg='ping 8.8.8.8 -c2'" >> ~/.zshrc
echo "alias kittyconf='nano ~/.config/kitty/kitty.conf'" >> ~/.zshrc
echo "alias acceder='echo "marca de la lavadora mayusculas y segundo renglon la letra c mas mi numero"'" >> ~/.zshrc

## de el archivo primera
echo "alias cx='chmod +x '" >> ~/.zshrc
echo "alias f2r='sudo systemctl restart fail2ban'" >> ~/.zshrc
echo "alias f2s='sudo systemctl status fail2ban'" >> ~/.zshrc
echo "alias expo2='extractPorts allPorts'" >> ~/.zshrc
echo "alias ippp='curl ifconfig.me'" >> ~/.zshrc
echo "alias surfeando='sudo anonsurf start'" >> ~/.zshrc
echo "alias servidor='python3 -m http.server 8000'"  >> ~/.zshrc
echo "alias shortc='nano ~/.config/sxhkd/sxhkdrc'"  >> ~/.zshrc

echo "alias tailscaleinst='curl -fsSL https://tailscale.com/install.sh | sh'"  >> ~/.zshrc
echo "alias vm-to='sudo apt install -y --reinstall open-vm-tools-desktop'" >> ~/.zshrc

echo "alias pantalla='nano ~/.config/bspwm/bspwmrc'"  >> ~/.zshrc
echo "alias notas='ranger $HOME/notas'"  >> ~/.zshrc
#nuevos

echo "pgg" | cat - ~/.zshrc > temp && mv temp ~/.zshrc
echo "alias apagar='sudo shutdown -h now'"  >> ~/.zshrc
echo "alias fixsc='cd $HOME/4rji/fixed'" >> ~/.zshrc
echo "alias bateria='acpi -b'" >> ~/.zshrc
echo "alias bateria-f='upower -i /org/freedesktop/UPower/devices/battery_BAT0'" >> ~/.zshrc


echo "alias mkdirr='function _mkdirr(){ mkdir "$1" && cd "$1" };_mkdirr'"  >> ~/.zshrc
echo "alias 4rji=g'it clone https://github.com/4rji/4rji.git'"  >> ~/.zshrc
echo "alias redr='sudo systemctl restart NetworkManager'"  >> ~/.zshrc
echo "alias dormir='sudo systemctl suspend'"  >> ~/.zshrc
echo "alias redr='sudo systemctl restart NetworkManager'"  >> ~/.zshrc
echo 'alias mygpu="DRI_PRIME=1 glxinfo | grep \"OpenGL renderer\"" ' >> ~/.zshrc
echo 'alias pantallin="xrandr --output DP-1 --rotate left --auto --left-of eDP-1" ' >> ~/.zshrc

echo "alias vmware-tools='sudo apt install -y --reinstall open-vm-tools-desktop fuse3'"  >> ~/.zshrc
echo "alias fixwifi='sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf && sudo dhclient wlan0'"  >> ~/.zshrc
echo "alias wsend='wormhole send '"  >> ~/.zshrc
echo "alias target1.1='cp ~/.config/bin/bateria_backup.sh ~/.config/bin/bateria.sh '"  >> ~/.zshrc


sudo mv ~/Downloads/vpnitos ~/Downloads/.vpnitos

chmod +x ~/.config/bin/ip.sh
cd


##notas
mkdir notas

#borrar todo

sudo rm -rf Public Videos Music Pictures Desktop Templates Public Documents 4rji ScreenShots surfeandoano




#some binarios


#nombre IP = da el nombre de la maquina si es linux o windows
#ruta archivo = copia la ruta del archivo en el portapapeles
#target1 = cambia el estatus de la bateria por la direccion IP target o cualquier otra cosa que se quiera poner ahi
#asd = copia el contenido de target1 a el portapapeles
#clipp archivo = copia el contenido del archivo al portapapeles 
#whx binario = hace un xargs cat a un binario






