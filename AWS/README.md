
# AWS 

Here you will find documentation regarding various AWS services presenting my learning journey of cloud fundementals, along with 2 hands on projects to showcase the services in a real time environment.


## Core services

AWS EC2 - Provisioning of compute servers

IAM - Identity access through the configuration of users, roles & groups as well as services ; Least privelege 
Key pairs for SSH

Lambda - Serverless functions - short, repeatable code executions based on triggers

Availability Zones for reliability
Edge zones for content delivery

Route 53 & ACM - Domain management & registration

S3 - Bucket Storage

DynamoDB - NoSQL Database 

VPC - Private cloud, subnetting, CIDR

ELB - Load balancing
      Autoscaling 

EKS/ECS - Container orchestration 

Target groups - Monitoring of groups of resources

CloudWatch - Logging 

Elastic IPs for static services


# Projects

## - Project 1 -

Create a custom VPC with one public and one private subnet, set up the correct routing for internet access, and deploy EC2 instances across them.

Result:

- Setup VPC featuring two subnets consisting of their own public and private IP, Internet gateway for public access and NAT gateway for private IP internet interaction; configured using route tables.

- Allow SSH only from Home IP, private EC2 only allows interaction from instances within the VPC


## - Project 2 -

Deploy two EC2 instances behind an ALB. The ALB must handle all incoming traffic. EC2 instances should not be accessible directly from the internet.

<img width="2000" height="1520" alt="architecture-diagram" src="https://github.com/user-attachments/assets/5763a27f-6112-4091-bac3-38a9fbad0e4e" />




Result:

- Deployed a load balancer which points to two ec2 instances to host different webpages. HTTP traffic is only allowed through the load balancer instead of directly to the instances, health checks on the root paths for both. Webpages deploy on startup with script.
