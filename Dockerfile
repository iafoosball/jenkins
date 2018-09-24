FROM jenkins:latest
USER root

# Install docker
RUN wget https://download.docker.com/linux/debian/gpg && \
    apt-key add gpg && \
    echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee -a /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -qy docker-ce

# Install compose
RUN curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose