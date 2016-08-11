FROM ubuntu:xenial-20160809

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER root

RUN apt-get update && apt-get install -y \
    python3-pandas \
    python3-pip \
    python3-sqlalchemy

ENV readgroup_json_db 0.15

RUN pip3 install readgroup_json_db
