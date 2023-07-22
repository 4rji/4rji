#!/bin/zsh

#mkdir $HOME/Downloads/vpnit

#nuevos
echo "pgg" | cat - ~/.zshrc > temp && mv temp ~/.zshrc
echo "alias apagar='sudo shutdown -h now'"  >> ~/.zshrc
echo "alias 4rji='git clone https://github.com/4rji/4rji.git'"  >> ~/.zshrc
echo "alias fixsc='cd $HOME/4rji/fixed'" >> ~/.zshrc
echo "alias bateria='acpi -b'" >> ~/.zshrc
echo "alias mkdirr='function _mkdirr(){ mkdir "$1" && cd "$1" };_mkdirr'"  >> ~/.zshrc
echo "alias 4rji='f(){ git clone https://github.com/4rji/4rji.git && cd 4rji; unset -f f; }; f'"  >> ~/.zshrc
echo "alias redr='sudo systemctl restart NetworkManager'"  >> ~/.zshrc
echo "alias dormir='sudo systemctl suspend'"  >> ~/.zshrc



#This alias is added to polybar but maybe need to be add it manual
#alias mkdirr='function _mkdirr(){ mkdir "$1" && cd "$1" };_mkdirr'
