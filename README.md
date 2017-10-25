# Jenkins Docker With Docker Support
# Host docker.sock with Jenkins
Host Docker Socket inside container with Jenkins... so when Jenkins needs to perform build steps Jenkins can create docker container while being in the container itself all containers will be at equal level

# Base Docker Image

* [ubuntu:16.04](https://registry.hub.docker.com/_/ubuntu/)



### Usage
docker run -it -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock kazimurtaza/docker-jenkins-inside-docker sh -c "bash"

-p 8080:8080 is for jenkins which will be installed inside.
