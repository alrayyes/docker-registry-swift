FROM registry:latest
MAINTAINER Ryan Kes ryan@andthensome.nl

RUN apt-get install -y libxml2-dev libxslt1-dev zlib1g-dev 
RUN pip install docker-registry-driver-swift
ADD patch.txt /tmp/patch.txt
WORKDIR /usr/local/lib/python2.7/dist-packages
RUN patch -p1 </tmp/patch.txt
RUN rm /tmp/patch.txt
RUN pip install docker-registry-core --upgrade