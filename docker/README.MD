# Docker 

In this repository you will find projects and notes related to Docker


## What I built

- A  scalable multi-container orchestration using docker compose that creates a webpage using flask and displays an active visit count with data peristence using redis, with load balancing via an NGINX reverse proxy

- A  Multi container flask and SQL orchestration, using a multi stage build to reduce image size 


## Tech stack

- Docker  -Redis -Flask -Python -MySQL -nginx


## What I learned

- Using a Dockerfile to build an image and containerise an application

- Mutli container orchestration using Docker Compose yml files

- Using Multi stage builds within a Dockerfile to reduce image size, understanding build time vs runtime, each FROM statement is a new filesystem

- Networking within docker containers, how they interact with one another, the difference between exposing a port and mapping

- Setting environment variables within a container to secure secrets/config

- using Redis as a database with data persistence via docker volumes

- use of dockerhub to upload and retrieve docker images 

- AWS ECR to host containers

- Scaling containers using docker compose and nginx load balancing


# Debugging tips

- Make sure to match the host-name/service name declared in docker-compose in actual code 

- rebuild images always after changing application code

- once you scale a fixed port map is no longer viable as all instances cant bind to the same port

- Some applications require dependencies that neeed to be installed during buildtime to run