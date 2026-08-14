## Networking notes


Network - Group of devices shared to connect resources


IPV4 - 4 sets of digits 1-255

IPV6 - hexidecimal, uses 1-9,a-z

Ports - Endpoints for communication

Protocols - Rules governing data transmission (Http,FTP)

TCP - Data sent reaches accurately and correct order

- connection orientated before data 

- requires handshake (devices agreewe to communicate)

- reliable data transfer (lost data resent)

Functions 
- Delivered in order

- Error checking and flow control to prevent congestion

- Any bidirectional (back and forth)


UDP - Connectionless

- Simple to send and recieve data 

- No prior communication needed 

- Data can get lost

- Faster but less reliable 

Use cases - Real time applications, gaming, video streaming 
          - DNS queries 
          - VPN




Routing - Static or dynamic 

common protocols : OSPF  - Shortest path first
                   BGP - Border Gateway protocol



Subnetting - Dividing network into smaller networks

CIDR - Classless inter-domain routing

IP_Address/prefix_length

192.168.1.0/24


Calculate Binary = Divide by 2, note remainders , read remainders in reverse 


10.0.0.1 becomes 00001010.00000000.00000000.00000001

(Ip addresses 32 bit so needs 8 digits for bit positions)

10/2 =5 ;0
5/2 = 2;1
2/2 = 1;0
1;2= 0;1


255/2= 127;1
127/2=63;1
63/2=31;1
31/2=15;1
15/2=7;1
7/2=3;1
3/2=1;1
1/2=0;1

- Full 8 bit 



## Calculate subnets 

subnet masks = divide into network and host by seperating 32 bit into network and host portions

## NAT -  Translate private IP (Local) to public IP (Internet)

Static - 1:1 Public and priavte IP (good for static website)

Dynamic NAT - maps private IP to public IP within a pool for someone to use

Port Address Translation - Assigns port number to each device on a public ip


## Troubleshooting

Common issues 

- Connectivity loss

- slow network performance 

- IP address conflicts; two devices on same network with same ip

- DNS resolution failure 


Tools : Ping command - Response from domain 
        Traceroute - Tracks path data takes to reach destination
        Nslookup - Query DNS