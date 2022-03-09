# Exadel Task 4 - Docker

## Docs:
  1. Read documentation about docker (https://docs.docker.com/) - *Have read*

## Tasks:
  1. Install docker. (Hint: please use VMs or Clouds for this) - *Have used Ubuntu*
  
  ![installed docker](https://user-images.githubusercontent.com/85607071/157217243-378de675-9612-4023-b898-b58ae9b87749.png)

  - Commands used to install docker:
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
  ![docker hello world](https://user-images.githubusercontent.com/85607071/157217294-f7f95f38-ebda-4c1d-988c-a4d830cd89e1.png)

  3.1. Create your Dockerfile for building a docker image. Your docker image should run any web application (nginx, apache, httpd). Web application should be located inside the docker image. 
  - *Created Dockerfile for building a docker image, which runs nginx web application*
  ![Dockerfile](https://user-images.githubusercontent.com/85607071/157212664-3e103ef5-cdbf-4f97-b238-52dcd4dabd13.png)

  ![nginx image](https://user-images.githubusercontent.com/85607071/157212822-103c41d2-f4e3-4625-874d-76e609db9b21.png)

  3.2. Add an environment variable "DEVOPS=<username> to your docker image 
  - *Environment variable could be added in Dockerfile as well*
  
  ![env_devops](https://user-images.githubusercontent.com/85607071/157212743-52c1306e-66b4-47a5-8772-a030eae58176.png)

  4. Push your docker image to docker hub (https://hub.docker.com/). Create any description for your Docker image. 
  
  ![dockerhub](https://user-images.githubusercontent.com/85607071/157212965-36daf907-a128-4e57-8b84-74c79e7ee09e.png)
  - *Pushed my nginx docker image to docker hub, added description:*
  ![image_2022_03_08T18_41_32_838Z](https://user-images.githubusercontent.com/85607071/157311292-48948c15-511b-4eee-a36d-0040bc4a869d.png)
  
  5. Create docker-compose file. Deploy a few docker containers via one docker-compose file. 
  - *Created docker-compose.yml file*
  ```
  vim docker-compose.yml
  ```
  first image - your docker image from the previous step. 5 nodes of the first image should be run; 
  - *To run 5 nodes of the first image added to deploy replicas:5*
  second image - any java application; 
  - *Chose tomcat as any java application*
  last image - any database image (mysql, postgresql, mongo or etc.). 
  - *Decided to run mongo as a database image*
  Second container should be run right after a successful run of a database container. 
  - *To ensure the same added depends_on section*
  
  ![docker-compose](https://user-images.githubusercontent.com/85607071/157215449-c386cb09-3335-4312-b5ac-e910307a679f.png)
  
  - In order to run docker-compose file, used command:
  ```
  docker-compose -f docker-compose.yml up
  ```


 
