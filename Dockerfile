FROM bitnami/mediawiki:latest
USER root
CMD /bin/bash
#install wget
RUN  export http_proxy=http://spanse:Jan%402801@proxy.ahm.corp:9119 \
  && export https_proxy=http://spanse:Jan%402801@proxy.ahm.corp:9119 \
  && apt-get update \
  && apt-get install -y wget \
  && apt-get install -y git \
  && git clone https://github.com/spdoc/mysql.git \
  && rm -rf /var/lib/apt/lists/*
