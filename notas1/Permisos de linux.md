Para que se cambien los permisos de los ejecutables y escalar privilegios con python3 por ejemplo.
```bash
getcap -r / 2>/dev/null
```
Esto verifica:
		**/usr/bin/python3.11 cap_setuid=ep**

Entonces se puede escalar privilegios con ese ejecutable.

para asignar los permisos
```bash
setcap cap_setuid+ep /usr/bin/python3.11
```
para ver la direccion de python3, es un link, entonces se puede usar

- readlink nombre_del_enlace_simbólico
- ls -l nombre_del_enlace_simbólico

Y para quitarle los permisos de  =ep
```bash
setcap -r /usr/bin/python3.11
```

