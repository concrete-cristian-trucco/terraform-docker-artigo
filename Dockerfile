FROM debian
LABEL name="cristiantrucco"

RUN apt-get update \ 
    && apt-get dist-upgrade -y \
    && apt-get install apt-transport-https ca-certificates -y

RUN  sh -c "echo deb https://apt.dockerproject.org/repo debian-jessie main > /etc/apt/sources.list.d/docker.list" \ 
&& apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
 
# Install build essential for `make`
RUN apt-get update \
    && apt-get install -y wget \
    python-pip \
    jq \
    git \
    unzip \
    build-essential \ 
    vim \
    docker-engine \
    docker-compose \
    && pip install --upgrade awscli s3cmd


# Install terraform
ENV TERRAFORM_VERSION 0.11.7
RUN mkdir -p /opt/terraform
RUN wget -nc -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -P /opt/terraform
RUN unzip -q /opt/terraform/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /opt/terraform
ENV PATH $PATH:/opt/terraform

# Make directory which will contain the terraform project and expose as volume
RUN mkdir -p /usr/src/app
VOLUME /usr/src/app

# Change working directory
WORKDIR /usr/src/app