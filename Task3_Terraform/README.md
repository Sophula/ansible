# Task 3: Terraform/IaC introduction
(Note. The assignment is written using AWS as an example. You can complete the assignment using any cloud services. You can also use Pulumi instead of Terraform)
 
## Important moments:
- Read about IaC (Infrastructure as a Сode)

All steps are done using Terraform , if you need any other tools besides WEB GUI, you can use them. 
You should not use the previously created VPC/EC2, etc. We assume that the task is executed from a “clear” AWS account with only the IAM administrator role. 
Passwords/Keys should not be stored on GitHub.
 
## Tasks:
- Create EC2 Instance t2.micro: Ubuntu, CentOS
- Both instances must have a tag with names. 
- EC2 Ubuntu must have Internet access, there must be incoming access: ICMP, TCP/22, 80, 443, and any outgoing access. 
- EC2 CentOS should not have access to the Internet, but must have outgoing and incoming access: ICMP, TCP/22, TCP/80, TCP/443 only on the local network where EC2 Ubuntu, EC2 CentOS is located. 
- On EC2 Ubuntu, install a web server (nginx/apache);
- Create a web page with the text “Hello World” and information about the current version of the operating system. This page must be visible from the Internet. 
On EC2 Ubuntu install Docker, installation should be done according to the recommendation of the official Docker manuals 
 
# EXTRA:
- Complete  step 1, but AMI ID cannot be hardcoded. You can hardcode operation system name, version, etc. 
- Step 3 read as: 
EC2 CentOS should have outgoing and incoming access: ICMP, TCP/22, TCP/80, TCP/443, only to EC2 Ubuntu. 
On EC2 CentOS install nginx (note. Remember about step 7, the task can be done in any way, it is not necessary to use terraform)
- Create a web page with the text “Hello World”. This page must be visible from the  EC2 Ubuntu.
 
The result of steps.1-7. is a terraform files in your GitHub. +file with output terraform plan BEFORE creating infrastructure.
The result of step EXTRA 8, is or scripts (if you have one), or an explanation of how this can be implemented.

