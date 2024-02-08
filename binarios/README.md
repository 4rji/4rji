Github              binarios       

###------Arch linux
instpkg             Instala un paquete en arch makepkg -si PKGBUILD
instermius          Instala termius en arch con yay   
instparu            instala para y scrub para arch (debian no necesita)                                
ssa_arch            ssa para arch linux                                                                
mackarch            Cambia la MAC de arch linux
aliasarch           Arregla los alias en arch
aliasarch           Arregla los alias en arch

###------hardware stuff
bateriamonitor      Muestra los watts y el estado de carga en kali
bateria             new script con bateria en lugar de alias                                           
tempe               or tempe -f temperatura de arch linux y -f crea un archivo con los datos de tempe  


###------utilidades sistema
todo_{algo}         Busca en alias y readme info
comando             aplica -h mensaje para mostrar al inicio de un script
comandos            Muestra varios comandos aprendidos s4vi
colores             Actualiza los colores de la polybar y de kitty en bspwx
usuario             Crea un usuario en bash, automatico.
wifiinterfaces      Arregla wifi en kali, terminal grafica texto, debian wifi GUI
wifikali            Crea wifi redes para kali nuevos system-connections
template_paquetes   Template para instalar paquetes automaticamente en todas las distro
verip               Verifica los permisos de los archivos linux claves
4rji                el programa y busqueda de scripts
4rjic	            Muestra una lista simple de 4rji
meslo               Instala las fuentes meslo
4rjia	            Muestra los alias
bashfun             Agrega las funciones function a las bash zsh, en zshrc bashrc mktem
whx_{binario}       hace un xargs cat a un binario y pregunta si deseo editarlo #ejemplo whx mired     
whr_{binario}       hace un nano a un binario    
cxx                 chmod +x y luego ./ ejecuta el script
cx                  chmod +x sin ejecutarlonetw
timeout 2h          Para ejecutar comandos por un tiempo determinado timeout 4 (4 segundos y cierra)
binar               mueve un script a el directorio /usr/bin                                           
ruta_{archivo}      copia la ruta del archivo en el portapapeles                                       
sys                 Systemctl ss= stop / sa= start / st= status / enn =enable --now 
clipc               Copia el ultimo comando escrito en la terminal
clipa_{archivo}     copia el contenido del archivo al portapapeles                                     
clipp               comando | clipp , copia la salida del comando en el portapapeles
jfirefox            firejail a firefox             
pant                arregla la pantalla para monitor de 34 pulgadas xrandr                             
lid                 cambia el comportamiento de lid laptop                                             
msmb                monta un smb o samba.                                                              
adio                borra un archivo con scrub                                                         
adios               borra toda una carpeta con scrub                                                   
herrabin            actualiza los binarios, funciones, alias y 2-4rji.sh,   -o para omitir binarios 
herralias           Actualiza los binarios descargando solo alias
worms               Comprime una carpeta y la manda por worms, se ejecuta: worms ruta_carpeta          
cscp                copiar archivos en scp en lugar de sftp    
csftp               copia un archivo por sftp hubicado en home, pregunta la IP y usuario y archivo     
reset               limpia la terminal
weather             Muestra el clima geolocalizacion usar
depurar             para depurar un script y ver su ejecusion: ❯  bash -x ./script
ssk                 kitty +kitten ssh 
lfcd                para moverme con cd  #copiar el plugin a zsh
mdcolors            Genera colores para archivos md 
maquinasova         Convierte maquinas ova para qemu
formatoscript       Copia al portapales formato script

genarc              genera archivos conjuntos de 100 MB
ddf                 hace un diff archivo vs archivo.backup                                             
copdir	            Copia un directorio por medio de ssh scp
copyrsyn            Usa hosts ansible y copia un archivo con rsync y clave privada
copyrs              Copia archivo por rsync preguntado hosts y puerto
mackali	            Cambia la MAC de kali
ncdu                para ver los archivos grandes, liberar espacio disco
netevils            aun no se                                                                          
fzf                 buscador bueno, solo tipiar fzf 
btop                Bueno, mejor que htop top #m to see the menu
tldr                Te dice como usar otras herramientas #ejemplo tldr ffmpeg
procesos            Muestra los procesos de los usuarios sin PID, no PID
proceso             Muestro los Procesos con PID 
servicios           Encuentra servicios que no son del kernel linux corriendo.
findser             Busca si un programa esta instalado, en dpkg - apt - systemctl
ctl {servicio}      Aplica un sudo systemctl a un servicio
findpak             Busca paquetes y servicios que esten instalados en varias distros


###------Repositorios
fixme               corre fix-4rji para solucionar repositorios despuies de la instalacion             
repos               vuelve a instalar por defaul los repos de kali cuando no funcionan.                
fixkalirepos	    Borra todo los archivos en /etc/apt/ y luego reinstala y descarga pgp
contenedor          Instala paquetes basicos, util en contenedores docker

###------nmap scaners
nombre_{IP}         Da el nombre de la maquina si es linux o windows                                   
scanporty           python3 program que hace un escaneo y pregunta el numero de puertos.usa socket               
sweep               Hace un sweep y despues pregunta si desea ejecutar expo
sweepold            solo hace el sweep normal de las ips
nsweep_{192.168.1}  hace un nmap -sn en la red para buscar maquinas activas.                           
puertos2            nmap A -O -sV  nmap -A -O -sV -oX puerto.xml --stylesheet=https://svn.nmap.org/nmap/docs/nmap.xsl (probar varios firefox)
expo                Hace un scaneo con o sin Pn, y lo genera en carpeta tmp, hace expo1, expo2, expo3
expo4               crea un archibo clip1 del portapapeles para expo5                                  
expo5               limpia el archivo targeted y muestra solo los servicios, crea resumen 
sweepall            hace nmap xml para abrir con firefox, USA sweep, ips y puertos o puertos2
sweepnet {ip}	    Hace un sweep a toda la subnet, 10.0 o 192.168
nbash               bash escaneo de puertos de una maquina , no usa nmap, nbash 10.0.4.50
pbash               /dev/tcp/[IP] bash scaner puertos open (50 principales puertos only) en la red 10.0.4

###------Nessus
nessus              activa nesus y muestra el puerto donde abrirlo en firefox                          
nessus_-s           para nessus                                                                        
nessusinst          instalar nessus   

###------fail2ban
f2binst             instala debian fail2ban f2b                                                               
f2bcomm             fail2ban f2b comandos 

###------para bspwx
target1             cambia el estatus de la bateria por cualquier otra cosa que se quiera poner ahi    
asd                 copia el contenido de target1 a el portapapeles                                    
fixethernet         Arregla la red del script ethernet_status para bspwx escritorio

###------artilleria
artilleria          Instala el honeypot artilleria
unbanar {IP}        Comenta la ip de banlist de artilleria, si no especifico IP me pregunta
artires             Reinicia el servicio artilleria

###------portspoof
portfake            Instala portspoof emula servicios para nmap, instala todo
faketables          aplica las reglas para portspoof, IPTABLES, proteje puertos y redirecciona trafico
iniciafakep         alias para iniciar el portspoof, despues de instalarlo

                               
 

###------buscar cosas en linux
buspal              Buscador de palabras en un directorio, con grep -q buspal {directorio}
comentada {file}    Busca en un archivo una linea, la comenta y agrega abajo de esa linea la nueva linea
limpiar	            Limpiar un archivo buscando, awk grep palabra.
buscando            Comandos para usar grep awk, # ls -l email* para buscar archivos empiezan email
grephn              Hace una busqueda de una palabra especifica en un directorio grep -Hn
mirar	            Hace un watch -n 1 comando, como netstat, o reglas.
rempal              Reemplaza una palabra dentro de un archivo
surempal            Reemplaza una palabra con sudo dentro de un archivo
limpiar             Limpiar un archivo buscando, awk grep palabra.
buspal              Buscador de palabras en un directorio, con grep -q buspal {directorio}
comentada {file}    Busca en un archivo una linea, la comenta y agrega abajo de esa linea la nueva linea
findme              Usa el comando find para buscar archivos


###------ssh
x11uso              Instrucciones para x11
ebanner             cambia el banner de ssh antes de logearse hola cacheton y se edita con bannere                                      
bannerssh           Edita el banner de inicio de session de ssh, cuando se loguea
sshcom              Copia y ejecuta un script en una maquina ssh remota
sshmonitor          sshmoni loop para correr el sshmoni while loop
sshmonitorsc        Script que checa conexiones ssh activas (reemplazado por sshmoni
killsshauto         Cierra automaticamente todos los PID de ssh que encuentro con sshmoni
killsshmanual       Pregunta su quiero hacer sudo kill a los PID de ssh de sshmoni
sshmoni             Este busca conexiones activas ssh, muestra procesos PID y luego ejecuta killsshmanual
itcpd               Enmascara ssh o cualquier puerto con tcpd, version ssh nmap -sV -sC
ssh80               Conecta con ssh -L para redirijir trafico desde una maquina a otra, a browser 
fixsshhost          Seguido de la ip, para borrar la ip del localhost cuando se duplica	
copyssh             copia mui clave a una maquina remota
googlessh           Instala la authenticacion de google para ssh                                               
fixssh              arregla cuando la clave ssh no se conecta porque hay un duplicado.                 
sshconf             Hace un archivo .ssh/config para conectarse por medio de jump ejemplo: ssh maquina-final
sshjump             Configura los jumps infinitamente.
sshlist             Modifica la lista de /etc/hosts allow deny para asegurar la red ssh

###------Network
fixwifibspwm        Arregla el wifi de bspwm cuando no funciona, instala y agrega una linea 
wificonect          Usa el comando nmcli para conectar una red wifi en kali
minet               Alias de ifconfig | grep "inet " | grep -v 127.0.0.1
conexiones          Muestra nmcli conexiones nmcli -p device show y show --active red ethernet speed
minet               Alias de ifconfig | grep "inet " | grep -v 127.0.0.1
mired               copia eth0 al portapapeles y muestra todas las ips del equipo                      
miwl                copia wlan0 al portapapeles  
chdns	            Cambia el DNS comentando lineas y tambien quita banderas chattr +i PONE / -i QUITA 
ppt                 Checa lsof netstat nmap y puertos que estan escuchando en el sistema

###------seguridad de sistemas
iarpon              Arpon para protejer de arp poising. arp sniff 
iicmp               para protejer de ataques icmp, solo cambia el 0 a 1 este script
bucle               Ejecute un while true; do en bucle, pregunta tiempo y comando
ataquehttp          HTTP DoS Test Tool de goldeneye, descomprime en tmp y de ahi dice como ejecutarlo.
inundacion          hping3 un ataque de inundacion flood para pruebas de carga, pregunta por dos ataques
metas               Script que inicia metasploit con base de datos
ataquepython        (DoS) enviando múltiples solicitudes HTTP a una dirección IP del tipo GET
encryptar           encrypta archivos con python, cambiar la ruta dentro del script para que funcione
encryptar1          el original de encryptar 

###------distrobox
dockercp            Alias que muestra el formato para copiar archivos en docker
dockernet           Crea una red para rotar ips en docker y muestra comando para ejecutar
dcc                 Crea un archivo, muestra y ejecuta random ips docker, dockernet
fixdockerper        Arregla los permisos de docker para distrobox porque pedia contrasena
disinst             Instala distrobox docker contenedores y muestra menu de los disponibles
disarc              Para instalar en arch, pero se puede ejecutar el comando
kaliefi             Crea un kali efimero en distrobox 
disl                Distrobox list script que corre y muestra lista de distros 
disefimero          Crea un distrobox efimero
disapp              Ejecuta una aplicacion en un contenedor determinador despues del script 


###------antivirus y malware
rkhun               Instala, actualiza y ejecuta el scaneo rkhunter, tambien instala chkrootkit
apachenombre        Instrucciones para remover el nombre del banner de apache y nginx
clamavinst          instala antivirus e inicia un scaneo solo ingresando la ruta, y se actualiza tambien 
splunkinst          instala Splunk y crea un alias para uniciar en zsh
splunkforw          Splunk universal forwarder, instala .deb automaticamente. Win-Linux-Mac-freebsd 
testnids            curl http://testmynids.org/uid/index.html 
suricatainst        Instala suricata, largo proceso
suricatalog         tail -f /var/log/suricata/fast.log


###------utilidades instalaciones
tinyurl             Muestra los alias creados en tinyurl, se descarga como tinyurl.com/herratodo
torrelay            Instala tor relay, probado en debian
protoninst          Instala protonvpn en kali o debian 
grafanainst         Instala grafana y prometheus 
instpalabras        El diccionario para crear palabras o al revez nwiz se llama
tailscaleinst       El que mas he usado
zerotierinst        Zerotier scrip like tailscale yo uso tailscale 
emailscraper        ejecuta una herramienta de un curso para buscar emails                             
crackmapexec	    Ejecutaria crackmapexec smb {ip} para active directory
nerdfonts           Instala nerdfonts comando fuentes sudo pacman -S nerd-fonts  
ufwinst             instala ufw y crea regla para puerto ssh                                           
instdebian          basic debian apps for clean debian12
instsurf            instala surfeando

#Instalaciones                                                                  
lockfancyinst       Bloquear fancy para pantalla, alias lockf
qemuins             Instala qemu y virtual en debian o arch
qemuvm              Inicia la maquina virtual de qemu, desde cli :)
qemuconsola         Para habilitar consola con virsh 
instsublime         Instala sublime en kali
instgithub          Instala github desktop en kali
pythonscritps       instala requerimientos y baje scritps del curso de python
obsidianinst        Instala obsidian en deb, baja paquete e instala notas 
zeroinst            Script para zero raspberry
zshinst             Instala la zsh h-my-zsh powerlevel10k
tmuxinst            Archivos para la configuracion de tmux, lo instala. con B
neofetchinst        Instala y personaliza neofetch para ppg1

#Ansible
ansiconf            Crea host para ansible con alias y crea el archivo ansible_hosts
ansic               Para ejecutar comandos en los hosts, ansible. En ingles ansic_english 
ansicc              Este da la opcion de elegir un solo host o todos. ansible
ansibleplay         Crea archivos ejemplos de ansible play para ejecutar, se necesitan modificar
ansip               Alias ping a todos los hosts ansible
ansipp              Ping a un solo hosts, muestra la lista ansible
ansipl              Alias ansible playbook 
sshansi_nonames     Conecta los hosts de ansible con ssh cuando no tienen nombre
sshansi             Conecta por ssh hosts con nombre al inicio ansible
ansihost            Cat a los hosts y pregunta si quiero editarlo ansible


#python herramientas
proxyvery           Verifica si funcionan los proxies de una lista
chismes             Ejecuta tcpdump y tshark para ver la red, captura wireshark
proxylocomenu       Menu para descargar, el primero
proxyloco           Instala el proxy, interface e inicia
proxylococ          Comandos para su ejecucion de proxy loco reverse shell
agentloco           Instala amd agente
