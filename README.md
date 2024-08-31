# Dockerized Apache Server

This project demonstrates how to set up an Apache web server inside a Docker container using a Debian base image. The containerized Apache server can be used to host static websites, serve dynamic content, or act as part of a microservices architecture.

# Project Overview

The project includes:
- A `Dockerfile` to build a Docker image with Apache installed.
- Instructions on how to build and run the Docker container.

# Prerequisites

Before you begin, make sure you have the following installed on your machine:
- Docker
- Git (to clone the repository)

**Clone the repository:**

   ```bash
   git clone https://github.com/kostas-python/dockerized-apache.git
   cd apacheserver

#Build the Docker image:

bash
Copy code
docker build -t my-apache-image .

## Run the Docker container:

bash
Copy code
docker run -d -p 8080:80 --name apache-container my-apache-image


##  Configuration
Dockerfile
The Dockerfile used to build the Apache server image is simple and based on Debian:

dockerfile
Copy code
FROM debian:latest

RUN apt-get update && apt-get install -y apache2

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
This Dockerfile:

Pulls the latest Debian image.
Installs Apache HTTP server.
Exposes port 80, which Apache listens on.
Runs Apache in the foreground to keep the container running.
Usage
Accessing the Server: Once the container is running, you can access the Apache server by navigating to http://localhost:8080 in your web browser.
Stopping the Container: To stop the container, use the command docker stop apache-container.
Removing the Container: To remove the stopped container, use docker rm apache-container.