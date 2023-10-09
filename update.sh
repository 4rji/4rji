#!/bin/zsh

#This script update the bins and add some alias


#directorio de inicio de sesion de del grub
#sudo cp -r background.png /boot/grub/themes/kali/grub-4x3.png
#sudo cp -r background.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/4rji/Wallpaper/background4x3.png /boot/grub/themes/kali/grub-16x9.png
sudo cp -r ~/4rji/Wallpaper/background4x3.png /boot/grub/themes/kali/grub-4x3.png
sudo cp -r ~/4rji/Wallpaper/jack-dragon2_2048x2048.png /boot/grub/background.png
sudo update-grub

sudo mv ~/4rji/Wallpaper ~/.config


#fix scripts
sudo mv ips expo1 expo3 fastscan puertos sweep adios pgg nombres nombre whichsys fixme rompewifi ebanner nessusinst pvpn brillo xpsbrillo sss ssa ruta target1 expo1.1 asd clipp whx empezar miwl miip repos copyssh puertos2 nessus nsweep /usr/bin

echo "alias redr='sudo systemctl restart NetworkManager'"  >> ~/.zshrc
echo "alias dormir='sudo systemctl suspend'"  >> ~/.zshrc
echo "alias redr='sudo systemctl restart NetworkManager'"  >> ~/.zshrc
echo 'alias mygpu="DRI_PRIME=1 glxinfo | grep \"OpenGL renderer\"" ' >> ~/.zshrc
echo 'alias pantallin="xrandr --output DP-1 --rotate left --auto --left-of eDP-1" ' >> ~/.zshrc

echo "alias vmware-tools='sudo apt install -y --reinstall open-vm-tools-desktop fuse3'"  >> ~/.zshrc
echo "alias fixwifi='sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf && sudo dhclient wlan0'"  >> ~/.zshrc
echo "alias wsend='wormhole send '"  >> ~/.zshrc
echo "alias target1.1='cp ~/.config/bin/bateria_backup.sh ~/.config/bin/bateria.sh '"  >> ~/.zshrc

#newbin script with new alias
echo "alias jfirefox='firejail firefox '"  >> ~/.zshrc
echo "alias surfeando2='ssh -D 1080 '"  >> ~/.zshrc
echo "alias ssse='sudo nano /etc/ssh/sshd_config'"  >> ~/.zshrc
echo "alias sssr='sudo systemctl restart ssh'"  >> ~/.zshrc
echo "alias wre='wormhole receive '"  >> ~/.zshrc




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







#delete

rm -rf ~/4rji


