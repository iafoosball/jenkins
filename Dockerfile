FROM jenkins
USER root

# Install docker
RUN apt-get update
RUN apt-get install apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'

# Install compose
RUN apt install docker-compose