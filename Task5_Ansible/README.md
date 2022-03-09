# Exadel Task 5: Ansible for beginners
 
## Important points:
 
1. Read documentation about System configuration management. - [System configuration management](https://www.atlassian.com/continuous-delivery/principles/configuration-management)
2. Learn about the advantages and disadvantages of Ansible over other tools. (https://www.youtube.com/watch?v=1id6ERvfozo)
3. Become familiar with ansible basics and YAML syntax. (https://www.youtube.com/watch?v=1uFVr15xDGg)
4. Basics of working with Ansible from the official documentation - (https://docs.ansible.com/ansible/latest/user_guide/index.html#getting-started)

EXTRA Read the Jinja2 templating documentation - [Introduction](https://jinja2docs.readthedocs.io/en/stable/intro.html#experimental-python-3-support/), [Jinja2 Basics mini course](https://kodekloud.com/courses/jinja2-templating/)
 
## Tasks:
- Deploy three virtual machines in the Cloud. 
![cloud instances](https://user-images.githubusercontent.com/85607071/157311790-7e1b1b31-ec7a-4a0a-bdc5-35d04b837144.png)
Install Ansible on one of them (control_plane).
```
sudo amazon-linux-extras install ansible2 -y
```
![ansible_version](https://user-images.githubusercontent.com/85607071/157445202-d5c00538-1a1b-4d0f-af33-c65fd24ff325.png)

- Ping pong - execute the built-in ansible ping command. Ping the other two machines.

- My First Playbook: write a playbook for installing Docker on two machines and run it.
       
EXTRA 1. Write a playbook for installing Docker and one of the (LAMP/LEMP stack, Wordpress, ELK, MEAN - GALAXY do not use) in Docker.
EXTRA 2. Playbooks should not have default creds to databases and/or admin panel.
EXTRA 3. For the execution of playbooks, dynamic inventory must be used (GALAXY can be used).
