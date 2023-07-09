#!/bin/zsh

sudo apt update

sudo apt install kali-linux-top10 kali-linux-default -f
chmod +x ruta


sudo git clone https://github.com/4rji/surfeandoano.git

cd surfeandoano
sudo ./installer.sh


cd ..

#paso 2 instalar herramientas, crear alias, y mover binarios
sudo apt install net-tools -y
sudo apt install wormhole -y
sudo apt install ranger -y
sudo apt install scrub -y
sudo apt install shred -y
sudo apt install curl -y

# Clonar fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Agregar alias a .zshrc
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

## de el archivo primera
echo "alias cx='chmod +x '" >> ~/.zshrc
echo "alias f2r='sudo systemctl restart fail2ban'" >> ~/.zshrc
echo "alias f2s='sudo systemctl status fail2ban'" >> ~/.zshrc
echo "alias expo2='extractPorts allPorts'" >> ~/.zshrc
echo "alias ippp='curl ifconfig.me'" >> ~/.zshrc
echo "alias surfeando='sudo anonsurf start'" >> ~/.zshrc
echo "alias servidor='python3 -m http.server 8000'"
echo "alias shortc='nano ~/.config/sxhkd/sxhkdrc'"
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "
echo "









source ~/.zshrc

chmod +x ~/.config/bin/ip.sh


sudo mv ips expo1 expo3 fastscan puertos sweep whichsys ruta /usr/bin

cd ..
sudo rm -rf Public Videos Music Pictures Desktop Templates Public Documents 4rji ScreenShots surfeandoano

ch




