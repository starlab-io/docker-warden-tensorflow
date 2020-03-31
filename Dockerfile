FROM tensorflow/tensorflow:2.0.1-py3
MAINTAINER Star Lab <info@starlab.io>

ARG DEBIAN_FRONTEND=noninteractive

RUN \
  apt-get update -y && \
  apt-get --quiet --yes install \
    vim && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*

RUN pip3 install matplotlib pandas jupyterlab tables keras numpy Cython h5py
