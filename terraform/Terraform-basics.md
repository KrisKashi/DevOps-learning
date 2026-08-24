# What I did 

Watched a [Short video](https://www.youtube.com/watch?v=l5k1ai_GBDE), opted for short 20 minute youtube video instead of 2 hour long advanced tutorial so I could learn basics and then try to make a simple project to reinforce my knowledge.

# Next steps 

Download terraform on my local machine and use it to spin up an AWS instance.

# What I learned 


- Terraform - Open source used to Automate and manage infrastructure 
IAC - infratsructure as code , automate provisioning of infratsructure 

Declaritive language = end result rather than steps to achieve that 
EG : 5 servers with following network config , AWS user with these permissions 

benefits :

-  when changing states simply declare what you need and terraform will figure out steps 
adjust conifg file and re-execute, cleaner config, always know the current state

uses : - create vpc , aws users and permissions, start instances and install docker 

- Alternate tool : Ansible : Configure infrastructure deploy apps and install/update software 
can use both 




How?

2 input sources : TF-config, State

Core - compares the two and figures out what needs to be done to achieve config 

Providers : AWs,Azure etc [Iaas], Kubernetes (PAAS), Fastly (SaaS) over 100 providers 1000+ resources 

exmaple : provider AWS, resource = aws_VPC 
managing infrasturcture 
create infrastructure - AWS servers 
changes - want to add more instances 

replicating infrastructure - happy with setup replicate to production, use other one for DEV/staging environment 

## Commands 
init - initialises terraform 
Refresh - query infrastructure to get state 
plan - create execution plan to achieve desired state in config 
 Preview - No changes 

 apply - executes the plan 
          
