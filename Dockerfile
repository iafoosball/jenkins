FROM jenkins
USER root

# Install docker
RUN apt  update
RUN apt install -y apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg
#RUN rm /etc/apt/trusted.gpg
RUN apt-key add gpg
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'
RUN apt  update
RUN apt-get install docker-ce

# Install compose
RUN apt install -y docker-compose