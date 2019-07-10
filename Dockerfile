FROM selidocker.lmera.ericsson.se/cv/ubuntu
MAINTAINER  Daniel Qian <qsj.daniel@gmail.com>

COPY kafka_exporter /bin/kafka_exporter
COPY run.sh /bin/run.sh

EXPOSE     9308

#ENV kafka_server_addr "192.168.17.45:9093"

RUN mkdir -p /etc/exmple2 \
    && chmod +x /bin/kafka_exporter

#ENTRYPOINT /bin/kafka_exporter --kafka.server=${kafka_server_addr}
ENTRYPOINT sh /bin/run.sh