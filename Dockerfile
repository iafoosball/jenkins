FROM jenkins
USER root


RUN apt-get update && \
apt-get install -qy \
  apt-utils \
  libyaml-dev \
  build-essential \
  python-dev \
  libxml2-dev \
  libxslt-dev \
  libffi-dev \
  libssl-dev \
  default-libmysqlclient-dev \
  python-mysqldb \
  python-pip \
  libjpeg-dev \
  zlib1g-dev \
  libblas-dev\
  liblapack-dev \
  libatlas-base-dev \
  apt-transport-https \
  ca-certificates \
  wget \
  software-properties-common \
  zip \
  unzip \
  gfortran && \
rm -rf /var/lib/apt/lists/*


# Install docker
RUN apt  update
RUN apt install -y apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable'
RUN apt  update
RUN apt-get install docker-ce

# Install compose
RUN apt install -y docker-compose