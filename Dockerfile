FROM ubuntu:latest
MAINTAINER shreyamlk96@gmail.com
USER root

WORKDIR /tmp
RUN apt update
RUN apt install -y wget
RUN wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
#untar= 
RUN tar -zxvf Python-3.7.0.tgz
WORKDIR /tmp/Python-3.7.0
RUN apt update
RUN apt install -y build-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev
RUN ./configure --enable-optimizations
RUN make -j8
RUN make install 

#--- pull python project ---

RUN apt install -y git
RUN git clone https://github.com/SugaanthMohan/Python_DSA.git