#!/usr/bin/env zsh

sudo apt install lsd -y

# Descargar el repositorio
git clone https://github.com/4rji/polybar.git

# Navegar al directorio clonado
cd polybar

# Dar permisos de ejecución al archivo install.sh
chmod +x install_arch.sh

# Ejecutar el script de instalación
./install_arch.sh






sleep 4

kill -9 -1

