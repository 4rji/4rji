```bash
nmap -vv --reason -Pn -T4 -sV -p 22 --script="banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods" -oN "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/tcp_22_ssh_nmap.txt" -oX "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/xml/tcp_22_ssh_nmap.xml" localhost
```

[/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/tcp_22_ssh_nmap.txt](file:///home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/tcp_22_ssh_nmap.txt):

```
# Nmap 7.94SVN scan initiated Thu Mar 21 03:43:33 2024 as: nmap -vv --reason -Pn -T4 -sV -p 22 --script=banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods -oN /home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/tcp_22_ssh_nmap.txt -oX /home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/xml/tcp_22_ssh_nmap.xml localhost
Warning: Hostname localhost resolves to 2 IPs. Using 127.0.0.1.
Nmap scan report for localhost (127.0.0.1)
Host is up, received user-set (0.000094s latency).
Other addresses for localhost (not scanned): ::1
Scanned at 2024-03-21 03:43:33 CDT for 0s

PORT   STATE SERVICE REASON         VERSION
22/tcp open  ssh     syn-ack ttl 64 OpenSSH 9.6p1 Debian 4 (protocol 2.0)
| ssh2-enum-algos: 
|   kex_algorithms: (12)
|       sntrup761x25519-sha512@openssh.com
|       curve25519-sha256
|       curve25519-sha256@libssh.org
|       ecdh-sha2-nistp256
|       ecdh-sha2-nistp384
|       ecdh-sha2-nistp521
|       diffie-hellman-group-exchange-sha256
|       diffie-hellman-group16-sha512
|       diffie-hellman-group18-sha512
|       diffie-hellman-group14-sha256
|       ext-info-s
|       kex-strict-s-v00@openssh.com
|   server_host_key_algorithms: (4)
|       rsa-sha2-512
|       rsa-sha2-256
|       ecdsa-sha2-nistp256
|       ssh-ed25519
|   encryption_algorithms: (6)
|       chacha20-poly1305@openssh.com
|       aes128-ctr
|       aes192-ctr
|       aes256-ctr
|       aes128-gcm@openssh.com
|       aes256-gcm@openssh.com
|   mac_algorithms: (10)
|       umac-64-etm@openssh.com
|       umac-128-etm@openssh.com
|       hmac-sha2-256-etm@openssh.com
|       hmac-sha2-512-etm@openssh.com
|       hmac-sha1-etm@openssh.com
|       umac-64@openssh.com
|       umac-128@openssh.com
|       hmac-sha2-256
|       hmac-sha2-512
|       hmac-sha1
|   compression_algorithms: (2)
|       none
|_      zlib@openssh.com
| ssh-hostkey: 
|   256 68:14:2d:b9:5c:80:c4:c5:84:70:cc:2d:6b:8f:88:30 (ECDSA)
| ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFcLI6oYWCZ6SdZlk3lF5YmNO1JteAeXxmL+pp3RIzhkiyiKHcENaFrH4VLRv6pPdcypCeVqt9plf0BYA9px0uw=
|   256 16:9f:4e:82:e9:83:f4:e1:66:6d:aa:0d:66:d7:4d:e6 (ED25519)
|_ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEXVZRwk9QD7y+h19wPuF1W7EuTO0ctzGtj2XLntX3B3
| ssh-auth-methods: 
|   Supported authentication methods: 
|     publickey
|_    password
|_banner: SSH-2.0-OpenSSH_9.6p1 Debian-4
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
# Nmap done at Thu Mar 21 03:43:33 2024 -- 1 IP address (1 host up) scanned in 0.67 seconds

```
