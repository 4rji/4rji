#!/bin/bash

# Función para verificar si un paquete está instalado

paquetes=("bsdmainutils" )

paquete_instalado() {  
    dpkg -l "$1" | grep -q '^ii'  
}

for paquete in "${paquetes[@]}"; do 
    if ! paquete_instalado "$paquete"; then  
        sudo apt-get install -y "$paquete"  
    fi  
done

# Copiar ~/.bashrc a /tmp/
cp ~/.bashrc /tmp/

# Extraer líneas que comienzan con 'alias' de /tmp/.bashrc a /tmp/list.txt
grep '^alias' /tmp/.bashrc > /tmp/list.txt

# Eliminar la primera palabra de cada línea en /tmp/list.txt
sed -i 's/^[^ ]* //' /tmp/list.txt

# Eliminar espacios alrededor del igual en /tmp/list.txt
sed -i 's/ *= */=/' /tmp/list.txt

# Formatear el archivo usando column
column -t -s "=" /tmp/list.txt > /tmp/lists.txt

# Mover el archivo formateado a ~/.config/aliases
mv /tmp/lists.txt ~/.aliaseses.md

# Mezclar los archivos
cat /usr/bin/README.md ~/.aliaseses.md > ~/.todo.txt

# Definir la ruta completa al archivo README.md
file="$HOME/.todo.txt"

# Verificar la existencia del archivo
if [ ! -f "$file" ]; then
    echo "El archivo $file no existe."
    exit 1
fi

echo "base de datos de 'todo' actualizado"
