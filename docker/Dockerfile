FROM quay.io/jeremiahsavage/cdis_base

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER ubuntu

ENV HOME /home/ubuntu

WORKDIR ${HOME}

ENV readgroup_json_db 0.14

RUN /bin/bash -c "source ${HOME}/.virtualenvs/p3/bin/activate \
    && pip install readgroup_json_db"
