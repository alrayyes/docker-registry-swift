FROM registry:0.8.1
MAINTAINER Ryan Kes ryan@andthensome.nl

RUN apt-get install -y libxml2-dev libxslt1-dev zlib1g-dev 
RUN pip install docker-registry-driver-swift==0.2.0