FROM bitnami/mediawiki:latest
USER root
CMD /bin/bash
#install wget
RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y git \
  && rm -rf /var/lib/apt/lists/*
