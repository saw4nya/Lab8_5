FROM jenkins/jenkins:lts

USER root

# install python and for robot
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

# install robot and seleniuim
RUN pip3 install --break-system-packages robotframework robotframework-seleniumlibrary

USER jenkins