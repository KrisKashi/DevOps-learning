# What I did 

Watched a utorial to familiarise myself with docker basics.

Conatiner - packages your code,environment,dependencies and everything else needed to run it 

- move between devices easy.

runs on images and containers 

images- technologies,runtime, tools to run the code

container - what gets made from the image 

simplifies sharing code.

commands - docker --version
           docker -- help


dockerfile  code that tells docker what to build- writes image
from base imag

work/dir - working directory 

layer caching - looks at every layer individually, uses cache if no changes,

copy - copies app into container

docker.ignore - similar to .gitignore does not package files listed into the container. 

ENV - environment variable 
RUN - used to build the image 


CMD - docker uses this to start the container , only one per dockerfile 
"
docker build -t "Tag" (path) - builds image wherever the path is 

RUN - runs image

Docker desktop can be used to debug or view stats about a running container 

Docker scout - looks inside image and generates report looking for vulnerabilities, suggests fixes.

Docker Compose - Tells containers how to work to work together to create full app

YAML file -
use build to refer to dockerfile

seperate containers reccomended for backend,frontend,databases - Multi container application 

docker voulume 

- folder docker uses to save and share  data from containers 

usage :  Volumes : 
Label :

docker compose - starts everything

docker compose up -  creates everything
docker compose down - destroys everything 

docker build cloud - Builds containers using the cloud 

- faster
- better for work in a team ; shared cache 

docker init - creates all required files