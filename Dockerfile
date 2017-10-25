#
# Jenkins + Dockers Inside
#
# https://github.com/kazimurtaza/docker-jenkins-inside-docker
#

# Pull base image.
FROM ubuntu:16.04

#
RUN \
apt-get update && \
apt-get install docker.io wget -y && \
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | apt-key add - && \
echo deb http://pkg.jenkins.io/debian-stable binary/ | tee /etc/apt/sources.list.d/jenkins.list && \
apt-get update && \ apt-get install jenkins -y && \ service jenkins start && \
service jenkins status && \ docker ps -a

# Define working directory.
WORKDIR /data


# Define default command.
CMD ["bash"]
