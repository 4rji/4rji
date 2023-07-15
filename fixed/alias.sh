#!/bin/zsh

#mkdir $HOME/Downloads/vpnit

cd $HOME/4rji/fixed
#nuevos
echo "pgg" | cat - ~/.zshrc > temp && mv temp ~/.zshrc
echo "alias apagar='sudo shutdown -h now'"  >> ~/.zshrc
echo "alias 4rji='git clone https://github.com/4rji/4rji.git'"  >> ~/.zshrc
echo "alias fixsc='$HOME/4rji/fixed/./fix.sh'" >> ~/.zshrc