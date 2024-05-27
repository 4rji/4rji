#!/bin/zsh

host="google.com"  # Cambia "google.com" por el host que desees

ping -c 1 "$host" > /dev/null 2>&1

if [[ $? -eq 0 ]]; then
  echo "The Internet connection is active."
else
  echo "Unable to access the Internet."
fi
