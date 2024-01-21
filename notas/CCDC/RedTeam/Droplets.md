

I found a faster way to deploy servers, although it doesn't serve exactly to recreate the competition environment of CCDC, it served to practice basic Linux, users, and I like it because I don't waste as much time creating images as in ESXi, which I have access to at home and school.



![[CCDC_droplets.png|700]]

### Description:

Thanks to the ease of deploying 'Droplets' (VM), it was easy for me to create a small test lab, where I installed:

- Backdoors in PHP
- Users with elevated credentials
- Hidden processes
- Crontab tasks
- Hidden files with fake malware
- Implant SSH credentials
- Credentials


#### Goal 

The goal is for my teammates to find and eliminate any tricks they encounter during the competition. In the previous practice we had in November, I found some of these issues on the Linux machines. It's also for them to learn how to use the scripts I made, specifically to find those processes.


# Tips

To avoid getting blocked, I created a /16 subnet to have an infinite number of available IPs. I also installed a Gateway on a Docker VM. This allows me to install Docker on my Kali machine and deploy ephemeral containers for each scan or command to the practice machines.


- I have automated some of the tasks with the [[redhavi]] script, and I will install others via Ansible.

- I also copied the malicious PHP file that I found in the competition and implanted it in the same folder as the HTML file.

- I created the script **dcc[^1]**  to deploy a Kali Linux machine in Docker with different IPs that get destroyed when closed. 

- I expose folders that shouldn't be exposed on the website to be able to call the reverse shell.

- The hidden process executes a file containing a reverse shell to my Kali machine.




_______
## "What I learned."

- Docker Networking 
- Gateway on the cloud 
- Ssh jump real uses (gateway)
- Subnetting 
- Hide processes in Linux
- PHP backdoors
- MySql y PrestaShop (the basics)
- Cloud is expensive 


"It was a multi-stage process where I gradually learned how to set up the gateway from the ground up. I also gained an understanding of traffic redirection, which was initially challenging but became clearer over time. It's worth noting that deploying a gateway in the cloud has some differences compared to other environments."

Thanks to my Docker knowledge, learning networking within Docker became much easier. I recall that a year ago, I watched multiple Docker networking videos, including [NetworkChuck](https://www.youtube.com/@NetworkChuck).. Revisiting these videos now, I found it much simpler to grasp and apply the concepts demonstrated, especially after a year of continuous learning. [Docker networking](https://www.youtube.com/watch?v=bKFMS5C4CG0)



<br>

<br>

___
Tags: #servers #cloud #digitalocean #gateway #sshjump #docker #mysql #redteam

[^1]:The script is available at the following link [[dcc]].

