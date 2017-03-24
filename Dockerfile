FROM debian

MAINTAINER foospidy

RUN apt-get update && apt-get -y install curl vim apt-transport-https && \
    echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update && \
    apt-get install ansible

WORKDIR /Ansible
