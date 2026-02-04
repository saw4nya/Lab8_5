FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install robotframework --break-system-packages

RUN pip3 install --break-system-packages robotframework robotframework-seleniumlibrary


USER jenkins
