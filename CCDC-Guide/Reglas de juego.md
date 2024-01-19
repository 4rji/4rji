
I had the images created since last weekend, but yesterday I realized that they charge for creating them even when they're not running, and my bill went up a lot. All new ones and on demand.

### Game Rules

Leave the ports of the Presto web page open, 80 and 445. If you block the SSH port, you will lose connection to the server.

Don't waste time blocking IPs. If the attacker owns the subnet or botnet, they can attack with hundreds of different IPs (and I own both).

At random times, in the /tmp folder, you will find a file that says CCDC. Delete it, but if it appears again after a few minutes, it means I still have access to the machine.

You won't find processes of connections because I don't maintain an open session, but you can look for logs or other running processes that seem suspicious.

# Tips

The whole solution is in the Kill Chain. If you follow the steps, you will surely find all the problems with the machine.

Changing the SSH port can complicate things in many ways, such as obfuscating other ports or significantly slowing down nmap scans.

# Tasks

Point the  DNS servers to those of Google or Cloudflare. (In the competition will be windows DNS)

Update the packages and install rkhunter to look for the rootkit (I'm still working on install it).

