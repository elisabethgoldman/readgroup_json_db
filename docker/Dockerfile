FROM quay.io/jeremiahsavage/cdis_base

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --force-yes

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER ubuntu

ENV HOME /home/ubuntu

WORKDIR ${HOME}

ENV readgroup_json_db 0.11

RUN /bin/bash -c "source ${HOME}/.virtualenvs/p3/bin/activate \
    && pip install readgroup_json_db"
