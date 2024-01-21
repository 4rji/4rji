Download the scripts:

wget -O - tinyurl.com/ccdc2024 | bash

  #if doesn’t work try with https:

wget -O - https://tinyurl.com/ccdc2024 | bash

  #if doesn’t work try with http:

wget -O - http://tinyurl.com/ccdc2024 | bash

  #if doesn’t work try with full url:

```bash 
wget -O - https://raw.githubusercontent.com/Minneapolis-College-Cyber-Defense-Club/Linux-Subteam/main/ccdc2023-javi/ccdc24 | bash 
```

  #if doesn’t work clone :

```bash 
git clone https://github.com/Minneapolis-College-Cyber-Defense-Club/Linux-Subteam.git
```

And then run the script manual:
```bash
chmod +x ccdc2024     
./ccdc2024 
```

pasw                   Checks users with bash and switches them to nologin
passl                   Same as pasw but without batcat
rootcheck            Checks various shell configuration files .bash zsh ...
crontall                Shows crontab of everyone
hardnet                Modifies ipv4 and also ipv6 hardnetu for Ubuntu
maskapps           Masks telnet ftp for ccdc
sshhard               Modifies ssh and makes a backup
sntp                     Installs chrony
bannerm              Creates a banner for ssh
chdns                  Changes Resolv.conf
ppt                      Checks lsof netstat nmap and ports that are listening on the system
rkhun                   Installs, updates, and runs the rkhunter scan, also installs chkrootkit