# Exadel Task 4 - Docker

## Docs:
  1. Read documentation about docker (https://docs.docker.com/) - *Have read*

## Tasks:
  1. Install docker. (Hint: please use VMs or Clouds for this) - *Have used Ubuntu terminal*
  
  Commands used to install docker:
  ```
  sudo apt-get update
  sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update
  sudo apt-get install docker-ce docker-ce-cli containerd.io
  ```

  EXTRA 1.1. Write bash script for installing Docker.
  *Used previous script, just added #!/bin/bash on top* 

  2. Find, download and run any docker container "hello world". (Learn commands and parameters to create/run docker containers. 
  ```
  docker run hello-world
  ```
  3.1. Create your Dockerfile for building a docker image. Your docker image should run any web application (nginx, apache, httpd). Web application should be located inside the docker image. 

  3.2. Add an environment variable "DEVOPS=<username> to your docker image 

  4. Push your docker image to docker hub (https://hub.docker.com/). Create any description for your Docker image. 
  
  5.  Create docker-compose file. Deploy a few docker containers via one docker-compose file. 
  first image - your docker image from the previous step. 5 nodes of the   first image should be run;
  second image - any java application;
  last image - any database image (mysql, postgresql, mongo or etc.).
  Second container should be run right after a successful run of a database container.





 
