FROM bitnami/mediawiki:latest
USER root
CMD /bin/bash
install wget
RUN  export http_proxy=http://spanse:Jan%402801@proxy.ahm.corp:9119 \
  && export https_proxy=http://spanse:Jan%402801@proxy.ahm.corp:9119 \
  && apt-get update \
  && apt-get install -y wget \
  && apt-get install -y git \
  && wget https://github.com/spdoc/hackathon/blob/master/latestbackupmdwiki/bitnami_mediawiki.sql \
  && wget https://github.com/spdoc/hackathon/blob/master/latestbackupmdwiki/information_schema.sql \
  && wget https://github.com/spdoc/hackathon/blob/master/latestbackupmdwiki/mysql.sql \
  && wget https://github.com/spdoc/hackathon/blob/master/latestbackupmdwiki/test.sql \
  && rm -rf /var/lib/apt/lists/*
