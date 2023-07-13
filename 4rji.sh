#!/usr/bin/env zsh

sudo apt install lsd -y

# Descargar el repositorio
git clone https://github.com/4rji/polybar.git

# Navegar al directorio clonado
cd polybar

# Dar permisos de ejecución al archivo install.sh
chmod +x install.sh

# Ejecutar el script de instalación
./install.sh

sudo rm -f 4rji.sh

#kill -9 -1