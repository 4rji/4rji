```bash
nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -oN "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/_quick_tcp_nmap.txt" -oX "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/xml/_quick_tcp_nmap.xml" localhost

nmap -vv --reason -Pn -T4 -sV -sC --version-all -A --osscan-guess -p- -oN "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/_full_tcp_nmap.txt" -oX "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/xml/_full_tcp_nmap.xml" localhost

nmap -vv --reason -Pn -T4 -sU -A --top-ports 100 -oN "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/_top_100_udp_nmap.txt" -oX "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/xml/_top_100_udp_nmap.xml" localhost

nmap -vv --reason -Pn -T4 -sV -p 22 --script="banner,ssh2-enum-algos,ssh-hostkey,ssh-auth-methods" -oN "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/tcp_22_ssh_nmap.txt" -oX "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/xml/tcp_22_ssh_nmap.xml" localhost


```