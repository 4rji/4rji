#!/bin/zsh

#mkdir $HOME/Downloads/vpnit
sudo apt install zip -y
unzip Ban1_aa@2.zip
mv vpnitos $HOME/Downloads/
sudo mv $HOME/Downloads/vpnitos/cc.txt /
sudo apt update

chmod +x fix-4rji.sh tmux_zsh.sh

sudo mv ips expo1 expo3 fastscan puertos sweep pgg whichsys pvpn brillo ruta /usr/bin


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
./fix-4rji.sh
./tmux_zsh.sh

# Clonar fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#mkdir $HOME/Downloads/vpnitos

sudo git clone https://github.com/4rji/surfeandoano.git
cd surfeandoano
sudo ./installer.sh

cd ..

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
echo "alias sshst='sudo systemctl start ssh'"  >> ~/.zshrc

echo "alias notas='ranger $HOME/notas'"  >> ~/.zshrcsource
echo "alias pantalla='nano ~/.config/bspwm/bspwmrc'"  >> ~/.zshrc

#nuevos
echo "pgg" | cat - ~/.zshrc > temp && mv temp ~/.zshrc
echo "alias apagar='sudo shutdown -h now'"  >> ~/.zshrc
echo "alias 4rji='git clone https://github.com/4rji/4rji.git'"  >> ~/.zshrc


chmod +x ~/.config/bin/ip.sh

cd


##notas
mkdir notas

#borrar todo

sudo rm -rf Public Videos Music Pictures Desktop Templates Public Documents 4rji ScreenShots surfeandoano








