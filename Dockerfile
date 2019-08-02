FROM selidocker.lmera.ericsson.se/cv/ubuntu
MAINTAINER  ezhnwng <zhengjia.wang@ericsson.com>

COPY kafka_exporter /bin/kafka_exporter
COPY run.sh /bin/run.sh

EXPOSE     9308

RUN mkdir -p /etc/exmple2 \
    && chmod +x /bin/kafka_exporter \
	&& chmod +x /bin/run.sh

ENTRYPOINT  /bin/dash /bin/run.sh