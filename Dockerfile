FROM tensorflow/tensorflow:2.0.0-py3
MAINTAINER Star Lab <info@starlab.io>

RUN apt-get update && \
    apt-get --quiet --yes vim \
        apt-get autoremove -y && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*
