#!/bin/zsh

# Mover la carpeta Wallpaper a ~/.config
mv ~/4rji/Wallpaper ~/.config

cp kitty/* ~/.config/kitty/ 



# Instalar paquetes necesarios
# Lista de paquetes a instalar
paquetes=("dnsutils" "jq" "systemd" "iproute2" "bat" "python-pip" "net-tools" 
          "wormhole" "ranger" "scrub" "shred" "curl" "kitty" "tmux" "dialog" 
          "iptables" "openvpn" "nmap" "mesa-utils" "lm_sensors" "firejail" 
          "lf" "proxychains" "neofetch" "lsd" "btop" "tldr" "backintime-qt" 
          "trash-cli" "ncdu" "ruby-rouge" "wireguard-tools" "bc" "ufw" "neovim"
          "zip" "fzf" "magic-wormhole" "zsh" "nodejs" "npm" "xclip")

# Función para verificar si un paquete está instalado
paquete_instalado() {  
    pacman -Q "$1" &> /dev/null
}

# Instalación de los paquetes
for paquete in "${paquetes[@]}"; do
    if paquete_instalado "$paquete"; then
        echo "El paquete $paquete ya está instalado."
    else
        echo "Instalando el paquete $paquete..."
        sudo pacman -Syu --noconfirm "$paquete"
    fi
done




git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

./alias.sh

#mover readme con lista en dos para 4rjic
#./partir_readme
mv README.md binarios




# Borrar carpetas
cd ~
rm -rf 4rji backintime Music Pictures Public Templates Videos


# Limpiar y actualizar sistema
sudo pacman -Syyu --noconfirm
