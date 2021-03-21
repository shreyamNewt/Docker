# Use the Ubuntu Image

`FROM ubuntu:latest`

# SET THE MAINTAINER FOR EMAIL UPDATES

`MAINTAINER shreyamlk96@gmail.com`

# Root USER

`USER root`

# Define Working directory

`WORKDIR /tmp`

# UPDATE INSTALL HANDLE

`RUN apt update`

# Check the dependencies of the packages you want and install any that are needed.
# Run apt-get update to update all your package lists

`RUN apt install -y wget`

# Download Python-3.7.0

`RUN wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz`

# Untar the Python file

`RUN tar -zxvf Python-3.7.0.tgz`

# Create Working directory Python-3.7.0

`WORKDIR /tmp/Python-3.7.0`

# UPDATE INSTALL HANDLE

`RUN apt update`

# Install Python dependencies
`RUN apt install -y build-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev`

`RUN ./configure --enable-optimizations`

`RUN make -j8`

`RUN make install`

# Install Git

RUN apt install -y git

# Pull Python Project from Git

`RUN git clone https://github.com/SugaanthMohan/Python_DSA.git`
