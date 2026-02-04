FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    docker.io \
    && apt-get clean

RUN pip3 install robotframework

RUN usermod -aG docker jenkins

USER jenkins
