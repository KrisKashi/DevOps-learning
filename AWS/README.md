
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


<img width="197" height="150" alt="architecture-diagram (2)" src="https://github.com/user-attachments/assets/187e7f25-7018-4621-8be5-c65596f1cd26" />
<svg viewBox="0 0 1000 760" xmlns="http://www.w3.org/2000/svg" font-family="Segoe UI, Helvetica, Arial, sans-serif">
  <defs>
    <marker id="arrow" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
      <path d="M0,0 L10,5 L0,10 z" fill="#555"/>
    </marker>
  </defs>

  <rect width="1000" height="760" fill="#ffffff"/>

  <!-- Internet -->
  <text x="500" y="35" text-anchor="middle" font-size="20" font-weight="bold" fill="#1a1a1a">Internet</text>

  <line x1="500" y1="48" x2="500" y2="85" stroke="#555" stroke-width="2" marker-end="url(#arrow)"/>

  <!-- Internet Gateway -->
  <rect x="400" y="85" width="200" height="45" rx="6" fill="#2d6cdf"/>
  <text x="500" y="113" text-anchor="middle" font-size="14" fill="#ffffff" font-weight="600">Internet Gateway</text>

  <text x="500" y="150" text-anchor="middle" font-size="11" fill="#666">route table: 0.0.0.0/0 → IGW</text>
  <line x1="500" y1="130" x2="500" y2="170" stroke="#555" stroke-width="2" marker-end="url(#arrow)"/>

  <!-- ALB -->
  <rect x="330" y="170" width="340" height="55" rx="6" fill="#2d6cdf"/>
  <text x="500" y="196" text-anchor="middle" font-size="14" font-weight="700" fill="#ffffff">Application Load Balancer</text>
  <text x="500" y="214" text-anchor="middle" font-size="11" fill="#dce8ff">webserveralb · internet-facing · spans both AZs</text>

  <line x1="500" y1="225" x2="500" y2="255" stroke="#555" stroke-width="2" marker-end="url(#arrow)"/>

  <!-- Target Group -->
  <rect x="350" y="255" width="300" height="50" rx="6" fill="#ffb400"/>
  <text x="500" y="278" text-anchor="middle" font-size="13" font-weight="700" fill="#1a1a1a">Target Group</text>
  <text x="500" y="296" text-anchor="middle" font-size="11" fill="#1a1a1a">Port 80 · HTTP health check</text>

  <!-- lines down to both instances -->
  <line x1="440" y1="305" x2="270" y2="450" stroke="#555" stroke-width="1.5" marker-end="url(#arrow)"/>
  <line x1="560" y1="305" x2="730" y2="450" stroke="#555" stroke-width="1.5" marker-end="url(#arrow)"/>

  <!-- VPC container -->
  <rect x="40" y="335" width="920" height="405" rx="10" fill="none" stroke="#2d6cdf" stroke-width="2" stroke-dasharray="6,4"/>
  <text x="60" y="358" font-size="14" font-weight="bold" fill="#2d6cdf">VPC — 10.0.0.0/24 (primary) + 10.1.0.0/24 (secondary)</text>
  <text x="60" y="376" font-size="11" fill="#666">(ALB has an interface in each subnet below — traffic path shown above)</text>

  <!-- Subnet A -->
  <rect x="90" y="390" width="360" height="330" rx="8" fill="#eef4ff" stroke="#2d6cdf" stroke-width="1.5"/>
  <text x="270" y="415" text-anchor="middle" font-size="14" font-weight="700" fill="#1a1a1a">Availability Zone A (eu-west-2a)</text>
  <rect x="115" y="430" width="310" height="40" rx="5" fill="#ffffff" stroke="#2d6cdf"/>
  <text x="270" y="454" text-anchor="middle" font-size="12" fill="#1a1a1a">Public Subnet 1 — 10.0.0.0/24</text>

  <rect x="140" y="490" width="260" height="90" rx="6" fill="#ffffff" stroke="#333" stroke-width="1.5"/>
  <text x="270" y="515" text-anchor="middle" font-size="13" font-weight="700" fill="#1a1a1a">EC2 Instance A</text>
  <text x="270" y="535" text-anchor="middle" font-size="12" fill="#444">Apache (httpd)</text>
  <text x="270" y="553" text-anchor="middle" font-size="12" fill="#444">Elastic IP attached</text>

  <line x1="270" y1="470" x2="270" y2="490" stroke="#555" stroke-width="1.5" marker-end="url(#arrow)"/>

  <!-- Subnet B -->
  <rect x="550" y="390" width="360" height="330" rx="8" fill="#eef4ff" stroke="#2d6cdf" stroke-width="1.5"/>
  <text x="730" y="415" text-anchor="middle" font-size="14" font-weight="700" fill="#1a1a1a">Availability Zone B (eu-west-2c)</text>
  <rect x="575" y="430" width="310" height="40" rx="5" fill="#ffffff" stroke="#2d6cdf"/>
  <text x="730" y="454" text-anchor="middle" font-size="12" fill="#1a1a1a">Public Subnet 2 — 10.1.0.0/24</text>

  <rect x="600" y="490" width="260" height="90" rx="6" fill="#ffffff" stroke="#333" stroke-width="1.5"/>
  <text x="730" y="515" text-anchor="middle" font-size="13" font-weight="700" fill="#1a1a1a">EC2 Instance B</text>
  <text x="730" y="535" text-anchor="middle" font-size="12" fill="#444">Nginx</text>
  <text x="730" y="553" text-anchor="middle" font-size="12" fill="#444">Elastic IP attached</text>

  <line x1="730" y1="470" x2="730" y2="490" stroke="#555" stroke-width="1.5" marker-end="url(#arrow)"/>
</svg>




Result:

- Deployed a load balancer which points to two ec2 instances to host different webpages. HTTP traffic is only allowed through the load balancer instead of directly to the instances, health checks on the root paths for both. Webpages deploy on startup with script.
