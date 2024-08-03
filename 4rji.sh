#!/usr/bin/env zsh

sudo apt-get update
sudo apt-get install libxcb1 libxcb-util1 libxcb-xkb1 -f


# Descargar el repositorio
git clone https://github.com/4rji/polybar.git

# Navegar al directorio clonado
cd polybar

# Dar permisos de ejecución al archivo install.sh
chmod +x install.sh

# Ejecutar el script de instalación
./install.sh

echo "Listo"

#sleep 4

#kill -9 -1


#sudo rm -f 4rji.sh

#kill -9 -1