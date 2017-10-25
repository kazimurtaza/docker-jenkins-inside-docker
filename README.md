Host Docker Socket inside with jenkins... automate builds

# Base Docker Image

* [ubuntu:16.04](https://registry.hub.docker.com/_/ubuntu/)

# Installation

1. Install [Docker](https://www.docker.com/).


### Usage
docker run -it -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock kazimurtaza/docker-jenkins-inside-docker sh -c "bash"
