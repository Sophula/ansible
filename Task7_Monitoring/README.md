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
