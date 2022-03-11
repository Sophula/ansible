# Task 6: Jenkins. Automate, Manage and Control
 
## Important points:
Read about Jenkins. What is Jenkins and what is it used for? Ways of using. What is a declarative and imperative approach?  [Jenkins documentation](https://www.jenkins.io/doc/)
 
## Tasks:
1. Install Jenkins. It must be installed in a docker container. 
```
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
```
- Expose port 8080 (By default runs on that port)
- Expose port 50000 (Master/Slave communication)
- Run in detached mode (Run container in background)
- Bind named volume (Persist data of Jenkins)

![docker ps](https://user-images.githubusercontent.com/85607071/157853958-297f5b49-ed92-40a4-bd84-295e38043fae.png)

Commands used: 
```
docker logs 9dd754d5cd15
```

![customize jenkins](https://user-images.githubusercontent.com/85607071/157854383-fcdb1d24-ad8d-4f45-b1bb-c2e38cc18452.png)

![image](https://user-images.githubusercontent.com/85607071/157856164-209b5313-abc4-4263-a98c-5b8aaa654cca.png)

2. Install necessary plugins (if you need).

![image](https://user-images.githubusercontent.com/85607071/157857214-0495af3b-7026-46e5-9521-cb6e76e96e90.png)

3. Configure several (2-3) build agents. Agents must be run in docker.


4. Create a Freestyle project. Which will show the current date as a result of execution.
5. Create Pipeline which will execute docker ps -a in docker agent, running on Jenkins master’s Host.
6. Create Pipeline, which will build artifact using Dockerfile directly from your github repo (use Dockerfile from previous task).
7. Pass  variable PASSWORD=QWERTY! To the docker container. Variable must be encrypted!!!

 
# EXTRA:
1. Create a pipeline, which will run a docker container from Dockerfile at the additional VM.
2. Create an ansible playbook, which will deploy Jenkins.
3. Deploy a local docker registry, upload a docker image there, download img from your local docker registry and run the container.
4. Configure integration between Jenkins and your Git repo. Jenkins project must be started automatically if you push or merge to master, you also must see Jenkins last build status(success/unsuccess) in your Git repo.

