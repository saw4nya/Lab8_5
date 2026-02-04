FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

RUN pip3 install --break-system-packages robotframework robotframework-seleniumlibrary

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    google-chrome-stable \
    fonts-liberation \
    libnss3 \
    libxss1 \
    libasound2 \
    libgbm1 \
    libgtk-3-0

USER jenkins