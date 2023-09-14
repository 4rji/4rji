#!/bin/zsh


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


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

#replace the theme, 
#ZSH_THEME="powerlevel10k/powerlevel10k"
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)

#source ~/.zshrc
#source /usr/share/zsh-sudo/sudo.plugin.zsh


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#to install sudo plugin
#cd /usr/share
#sudo mkdir zsh-sudo
#sudo chown natashar1:natashar1 zsh-sudo
#cd zsh-sudo
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh