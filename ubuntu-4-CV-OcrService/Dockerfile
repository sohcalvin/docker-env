FROM ubuntu:14.04

ENV HOME /home/vcap/app
RUN mkdir -p ${HOME}
WORKDIR ${HOME}

RUN apt-get update && apt-get install -y \
	curl \
  vim \
	python-opencv

COPY software ./software


RUN chmod 744 ./software/Miniconda3-latest-Linux-x86_64.sh
RUN ./software/Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3
ENV PATH ${PATH}:/opt/miniconda3/bin


#ENV http_proxy http://proxy.sin.sap.corp:8080
#ENV https_proxy http://proxy.sin.sap.corp:8080
#ENV HTTP_PROXY http://proxy.sin.sap.corp:8080
#ENV HTTPS_PROXY http://proxy.sin.sap.corp:8080

COPY environment.yml .
RUN conda env create -f environment.yml

ENV TESSDATA_PREFIX=${HOME}/software/

EXPOSE :9099

CMD  /bin/bash -c "source activate CV-OcrService;sleep 1;cd CV-OcrService; python app.py"
