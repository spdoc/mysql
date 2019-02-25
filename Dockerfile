from sumeetpanse/jenkin:1.4
 
USER root
RUN apt-get update -qq \
    && apt-get install git \
    && cd /tmp/ \
    && git clone https://github.com/spdoc/mysql.git
