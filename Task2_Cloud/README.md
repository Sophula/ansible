# Task 2a: AWS Cloud
(Note. The assignment is written using AWS as an example. You can complete the assignment using any cloud services.)
 
It is recommended to check this video before completing the task:
https://www.youtube.com/watch?v=O1_--7IvP5g&list=PLg5SS_4L6LYsxrZ_4xE_U95AtGsIB96k9 (RU)

 
Important moments:
- Read about Cloud Services. Pros and Cons, Cloud VS Bare Metal infrastructure?
- Read about Region, Zone in AWS. What are they for? Which one will you use and why?
- Read about Security best practices in IAM.
- Read about AWS EC2, what is it, what is it useful for?
- Read about AWS VPC (SG, Route, Internet Gateway)
.

- Read about AWS Cloud storage, Route 53, CloudFront and CloudWatch.
 
If you sign up in AWS for the first time, you will have the opportunity to use SOME AWS services for free (free tier) for 1 year. To register, you need a credit card from which it will be debited and returned 1-2$.
- Read about AWS Free Tier. Be aware what is free for new users and what is paid by your own money. Be sure and attentive.
- Pay attention to the Billing & Cost Management Dashboard in your account.
 
## Tasks (mandatory):
- Sign up for AWS, familiarize yourself with the basic elements of the AWS Home Console GUI.
- Explore AWS Billing for checking current costs. 
- Create two EC2 Instance t2.micro with different operating systems (Amazon linux / Ubuntu ...). Try to stop them, restart, delete, recreate.
- Make sure there is an SSH connection from your host to the created EC2. What IP EC2 used for it?
- Make sure  ping and SSH are allowed from one instance to another in both ways. Configure SSH connectivity between instances using SSH keys.

Install web server (nginx/apache) to one instance; 

- Create a web page with the text “Hello World” and additional information about OS version, free disk space,  free/used memory in the system and about all running processes;
- Make sure your web server is accessible from the internet and you can see your web page in your browser; 
- Make sure on the instance without nginx/apache you also maysee the content of your webpage from instance with nginx/apache.
 

 
## EXTRA (optional): 
- Run steps 3-6 with instances created in different VPC. (connectivity must be both external and internal IP)	
- Write BASH script for installing web server (nginx/apache) and creating web pages with text “Hello World”, and information about OS version
- Run step.6 without “manual” EC2 SSH connection.

## EXTRA (optional optional):
- Make a screenshot only of your web page сontent from your browser.
- Create your S3 bucket and place your screenshot there.
- Make your screenshot visible on the internet for everyone and make sure it works.
 
As a result of this task should be a link in your github on the your “Hello World” web page. After task check by your mentor, the instance may be deleted. EXTRA tasks are passed to mentors individually.

