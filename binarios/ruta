#!/bin/zsh

# Verificar si se proporcionó el nombre del archivo como argumento
if [[ -z "$1" ]]; then
  echo "Por favor, proporcione el nombre del archivo como argumento."
  exit 1
fi

# Obtener el nombre del archivo del primer argumento
filename="$1"

# Obtener la ruta completa del archivo utilizando readlink
filepath=$(readlink -f "$filename")

# Verificar si el comando pbcopy está disponible (en macOS) o utilizar xclip (en Linux)
if command -v pbcopy &>/dev/null; then
  echo "$filepath" | pbcopy
  echo "La ruta del archivo '$filename' se ha copiado en el portapapeles."
elif command -v xclip &>/dev/null; then
  echo "$filepath" | xclip -selection clipboard
  echo "La ruta del archivo '$filename' se ha copiado en el portapapeles."
else
  echo "No se pudo encontrar el comando necesario para copiar al portapapeles."
  exit 1
fi
