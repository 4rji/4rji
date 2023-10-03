#!/bin/zsh

# Actualizar lista de paquetes
sudo apt update

# Intentar solucionar los paquetes rotos
sudo apt --fix-broken install

# Eliminar paquetes descargados localmente y los que ya no son necesarios
sudo apt-get autoclean
sudo apt-get autoremove

# Forzar la instalación de la versión requerida de gnustep-base-common
sudo apt-get install gnustep-base-common=1.29.0-4 -y

# Intentar instalar el paquete gnustep-base-runtime
sudo apt install gnustep-base-runtime -y

# Opcional: Intentar instalar el paquete libgnustep-base1.29
# sudo apt install libgnustep-base1.29
