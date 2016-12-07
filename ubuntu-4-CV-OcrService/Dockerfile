FROM ubuntu:14.04

ENV HOME /home/vcap/app
RUN mkdir -p ${HOME}
WORKDIR ${HOME}

COPY . ./

RUN chmod 744 ./software/Miniconda3-latest-Linux-x86_64.sh
RUN ./software/Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3
ENV PATH ${PATH}:/opt/miniconda3/bin



RUN apt-get update && apt-get install -y \
	curl \
  vim


#ENV http_proxy http://proxy.sin.sap.corp:8080
#ENV https_proxy http://proxy.sin.sap.corp:8080
#ENV HTTP_PROXY http://proxy.sin.sap.corp:8080
#ENV HTTPS_PROXY http://proxy.sin.sap.corp:8080


RUN conda env create -f environment.yml

ENV TESSDATA_PREFIX=${HOME}/software/

RUN apt-get update && apt-get install -y python-opencv
