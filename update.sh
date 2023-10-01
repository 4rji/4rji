#!/bin/zsh

#This script update the bins and add some alias


#fix scripts
sudo mv ips expo1 expo3 fastscan puertos sweep adios pgg nombres nombre whichsys rompewifi pvpn brillo xpsbrillo sss ssa ruta target1 expo1.1 asd clipp whx empezar miwl miip repos copyssh puertos2 nessus nsweep /usr/bin

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





#delete

rm -rf ~/4rji


