FROM phusion/baseimage

MAINTAINER vdvelde.t@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 
RUN apt-get install -y -q python-pip
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install --upgrade pip
RUN pip install --upgrade pelican

RUN mkdir documents

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]



