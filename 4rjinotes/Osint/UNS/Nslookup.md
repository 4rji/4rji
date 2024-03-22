``` bash
nslookup
> set type=mx 
> unsinc.com
Server:		100.100.100.100
Address:	100.100.100.100#53

Non-authoritative answer:
unsinc.com	mail exchanger = 10 primary.us.email.fireeyecloud.com.
unsinc.com	mail exchanger = 20 alt1.us.email.fireeyecloud.com.
unsinc.com	mail exchanger = 30 alt2.us.email.fireeyecloud.com.
unsinc.com	mail exchanger = 40 alt3.us.email.fireeyecloud.com.

Authoritative answers can be found from:
> set type=ns
> unsinc.com
Server:		100.100.100.100
Address:	100.100.100.100#53

Non-authoritative answer:
unsinc.com	nameserver = aurora.ns.cloudflare.com.
unsinc.com	nameserver = yisroel.ns.cloudflare.com.

Authoritative answers can be found from:
> exit
	```
	
## transfer zone

```bash
host -l  unsinc.com aurora.ns.cloudflare.com
Using domain server:
Name: aurora.ns.cloudflare.com
Address: 108.162.194.110#53
Aliases: 

Host unsinc.com not found: 1(FORMERR)
; Transfer failed.
❯ host -l  unsinc.com  yisroel.ns.cloudflare.com
Using domain server:
Name: yisroel.ns.cloudflare.com
Address: 108.162.195.185#53
Aliases: 

Host unsinc.com not found: 1(FORMERR)
; Transfer failed.
```
	