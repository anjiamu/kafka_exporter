FROM selidocker.lmera.ericsson.se/cv/ubuntu
MAINTAINER  Daniel Qian <qsj.daniel@gmail.com>

COPY kafka_exporter /bin/kafka_exporter

EXPOSE     9308

#ENV kafka_server_addr "192.168.17.45:9093"

RUN mkdir -p /etc/exmple3 \
    && chmod +x /bin/kafka_exporter

#ENTRYPOINT /bin/kafka_exporter --kafka.server=${kafka_server_addr}
ENTRYPOINT mkdir -p /etc/exmple2 \
    && echo -e ${cac} > /etc/exmple/ca-cert \
    && echo -e ${keystorePemc} > /etc/exmple/kafka.client.keystore.pem \
    && echo -e ${keystoreKeyc} > /etc/exmple/kafka.client.keystore.key \
    && /bin/kafka_exporter --kafka.server=${kafka_server_addr} --tls.enabled --no-sasl.handshake --tls.insecure-skip-tls-verify --tls.ca-file=/etc/exmple/ca-cert --tls.cert-file=/etc/exmple/kafka.client.keystore.pem --tls.key-file=/etc/exmple/kafka.client.keystore.key