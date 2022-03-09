# Exadel Task 5: Ansible for beginners
 
## Important points:
 
1. Read documentation about System configuration management. - [System configuration management](https://www.atlassian.com/continuous-delivery/principles/configuration-management)
2. Learn about the advantages and disadvantages of Ansible over other tools. [Ansible pros and cons](https://www.youtube.com/watch?v=1id6ERvfozo)
3. Become familiar with ansible basics and YAML syntax. [YAML](https://www.youtube.com/watch?v=1uFVr15xDGg)
4. Basics of working with Ansible from the official documentation - [Official docs of Ansible](https://docs.ansible.com/ansible/latest/user_guide/index.html#getting-started)

EXTRA Read the Jinja2 templating documentation - [Introduction](https://jinja2docs.readthedocs.io/en/stable/intro.html#experimental-python-3-support/), [Jinja2 Basics mini course](https://kodekloud.com/courses/jinja2-templating/)
 
## Tasks:
- Deploy three virtual machines in the Cloud. 
![cloud instances](https://user-images.githubusercontent.com/85607071/157311790-7e1b1b31-ec7a-4a0a-bdc5-35d04b837144.png)
Install Ansible on one of them (control_plane).
```
sudo amazon-linux-extras install ansible2 -y
```
![ansible_version](https://user-images.githubusercontent.com/85607071/157445202-d5c00538-1a1b-4d0f-af33-c65fd24ff325.png)

- Created keypair.txt file in order to store key pair for Cloud EC2 Instances.
- Made ansible.cfg file to indicate the inventory file and disable host_key_checking.
![ansible cfg](https://user-images.githubusercontent.com/85607071/157497378-622eda9e-4ce4-4c3d-9e72-e5430b59eaec.png)

- Ping pong - execute the built-in ansible ping command. Ping the other two machines.
- Configured the hosts.txt file 
![hosts txt](https://user-images.githubusercontent.com/85607071/157450003-9e7d9d38-d0ad-4701-8cd1-79af0d840a72.png)
- Ran ansible ping command for other two machines
```
ansible -i hosts.txt prod_servers -m ping
```
![correct ping pong](https://user-images.githubusercontent.com/85607071/157451323-a3b3702b-f005-41d4-abac-325e143d2770.png)

- My First Playbook: write a playbook for installing Docker on two machines and run it.

![playbook1](https://user-images.githubusercontent.com/85607071/157496012-76a41fb7-cb69-480a-bcf4-b04f6007b992.png)
![playbook2](https://user-images.githubusercontent.com/85607071/157496050-d2e9ea1e-51cd-4609-93c5-c4d77191ef55.png)
       
EXTRA 1. Write a playbook for installing Docker and one of the (LAMP/LEMP stack, Wordpress, ELK, MEAN - GALAXY do not use) in Docker.
EXTRA 2. Playbooks should not have default creds to databases and/or admin panel.
EXTRA 3. For the execution of playbooks, dynamic inventory must be used (GALAXY can be used).
