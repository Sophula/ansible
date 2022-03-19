# Task 7: Logging & Monitoring

## Tasks:

## 1. Zabbix:
Big brother is watching  ....
- Install on server, configure web and base
- Prepare VM or instances. 
- Install Zabbix agents on previously prepared servers or VM.

EXTRA 1.2.2: Complete 1.2.1 using ansible

- Make several of your own dashboards, where to output data from your host/vm/container (one of them)
- Active check vs passive check - use both types.
- Make an agentless check of any resource (ICMP ping)
- Provoke an alert - and create a Maintenance instruction
- Set up a dashboard with infrastructure nodes and monitoring of hosts and software installed on them

Installed Docker Engine and Docker Compose on vm, opened 80/443/10050/10051 ports.

Docker Engine:

```
sudo apt install openssh-server
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
docker version
```

Docker Compose:

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```
Install Zabbix Repo:
```
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.0-1+ubuntu20.04_all.deb
dpkg -i zabbix-release_6.0-1+ubuntu20.04_all.deb
apt update
```
Install Zabbix server, frontend, agent: 
```
apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-sql-scripts zabbix-agent
```
[Create Initial Database, Configure the database for Zabbix server, Start Zabbix server and agent processes, Configure Zabbix frontend]https://www.zabbix.com/download?zabbix=6.0&os_distribution=ubuntu&os_version=20.04_focal&db=mysql&ws=apache


## 2. ELK:
Nobody is forgotten and nothing is forgotten.
- Install and configure ELK
- Organize collection of logs from docker to ELK and receive data from running containers
- Customize your dashboards in ELK

EXTRA 2.4: Set up filters on the Logstash side (get separate docker_container and docker_image fields from the message field)

- Configure monitoring in ELK, get metrics from your running containers
- Study features and settings

## 3. Grafana:
- Install Grafana
- Integrate with installed ELK
- Set up Dashboards
- Study features and settings
