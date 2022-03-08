# Exadel Task 5: Ansible for beginners
 
## Important points:
 
1. Read documentation about System configuration management.
2. Learn about the advantages and disadvantages of Ansible over other tools.
3. Become familiar with ansible basics and YAML syntax.
4. Basics of working with Ansible from the official documentation
EXTRA Read the Jinja2 templating documentation -
 
## Tasks:
- Deploy three virtual machines in the Cloud. 
![cloud instances](https://user-images.githubusercontent.com/85607071/157311790-7e1b1b31-ec7a-4a0a-bdc5-35d04b837144.png)
Install Ansible on one of them (control_plane).
```
sudo amazon-linux-extras install ansible2 -y
```

- Ping pong - execute the built-in ansible ping command. Ping the other two machines.
- My First Playbook: write a playbook for installing Docker on two machines and run it.
       
EXTRA 1. Write a playbook for installing Docker and one of the (LAMP/LEMP stack, Wordpress, ELK, MEAN - GALAXY do not use) in Docker.
EXTRA 2. Playbooks should not have default creds to databases and/or admin panel.
EXTRA 3. For the execution of playbooks, dynamic inventory must be used (GALAXY can be used).
