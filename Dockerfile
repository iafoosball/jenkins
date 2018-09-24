FROM jenkins/jenkins
USER root



RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -a -G staff,docker jenkins

RUN apt install docker-compose

#
#RUN apt-get update && \
#apt-get install -qy \
#  apt-utils \
#  libyaml-dev \
#  build-essential \
#  python-dev \
#  libxml2-dev \
#  libxslt-dev \
#  libffi-dev \
#  libssl-dev \
#  default-libmysqlclient-dev \
#  python-mysqldb \
#  python-pip \
#  libjpeg-dev \
#  zlib1g-dev \
#  libblas-dev\
#  liblapack-dev \
#  libatlas-base-dev \
#  apt-transport-https \
#  ca-certificates \
#  wget \
#  software-properties-common \
#  zip \
#  unzip \
#  gfortran && \
#rm -rf /var/lib/apt/lists/*


## Install docker
#RUN apt  update
#RUN apt install -y apt-transport-https ca-certificates curl software-properties-common
#RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
#RUN apt-key fingerprint 0EBFCD88
##RUN echo "deb [arch=amd64] https://download.docker.com/linux/debian stable" | tee -a /etc/apt/sources.list.d/docker.list
#RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
#RUN apt  update
#RUN apt install -y docker-ce
#RUN docker -v
#RUN ls /var/run/
#VOLUME /var/run/docker.sock /var/run/docker.sock
#RUN sudo service docker start
#RUN ls /var/run/
#RUN chmod 777 /var/run/docker.sock
#
#RUN docker run hello-world
#
## Install compose
#RUN apt install -y docker-compose
#
## add jenkins to docker group
#RUN usermod -aG docker jenkins
#
##set permission to docker
#
#
#
#
#
##RUN systemctl start docker
#RUN ls /var/run/
#RUN docker ps
#


USER jenkins