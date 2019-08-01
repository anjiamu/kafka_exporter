#!/bin/dash

if [ "${sasl_enable}" = "true" ]
then
  echo ${cac} > /etc/exmple2/ca-cert \
    && echo ${keystorePemc} > /etc/exmple2/kafka.client.keystore.pem \
    && echo ${keystoreKeyc} > /etc/exmple2/kafka.client.keystore.key \
    && /bin/kafka_exporter --kafka.server=${kafka_server_addr} --tls.enabled --no-sasl.handshake --tls.insecure-skip-tls-verify --tls.ca-file=/etc/exmple2/ca-cert --tls.cert-file=/etc/exmple2/kafka.client.keystore.pem --tls.key-file=/etc/exmple2/kafka.client.keystore.key

else if [ "${sasl_enable}" = "True" ]
then
  echo ${cac} > /etc/exmple2/ca-cert \
    && echo ${keystorePemc} > /etc/exmple2/kafka.client.keystore.pem \
    && echo ${keystoreKeyc} > /etc/exmple2/kafka.client.keystore.key \
    && /bin/kafka_exporter --kafka.server=${kafka_server_addr} --tls.enabled --no-sasl.handshake --tls.insecure-skip-tls-verify --tls.ca-file=/etc/exmple2/ca-cert --tls.cert-file=/etc/exmple2/kafka.client.keystore.pem --tls.key-file=/etc/exmple2/kafka.client.keystore.key

else if [ "${sasl_enable}" = "false" ]
then
  echo ${cac} > /etc/exmple2/ca-cert \
    && echo ${keystorePemc} > /etc/exmple2/kafka.client.keystore.pem \
    && echo ${keystoreKeyc} > /etc/exmple2/kafka.client.keystore.key \
    && /bin/kafka_exporter --kafka.server=${kafka_server_addr} --tls.enabled --no-sasl.handshake --tls.insecure-skip-tls-verify --tls.ca-file=/etc/exmple2/ca-cert --tls.cert-file=/etc/exmple2/kafka.client.keystore.pem --tls.key-file=/etc/exmple2/kafka.client.keystore.key --sasl.enabled --sasl.mechanism=sasl_mechanism --sasl.oauth.token-endpoint=${sasl_oauth_token_endpoint} --sasl.oauth.client-id=${sasl_oauth_client_id} --sasl.oauth.client-secret=${sasl_oauth_client_secret}

else if [ "${sasl_enable}" = "False" ]
then
  echo ${cac} > /etc/exmple2/ca-cert \
    && echo ${keystorePemc} > /etc/exmple2/kafka.client.keystore.pem \
    && echo ${keystoreKeyc} > /etc/exmple2/kafka.client.keystore.key \
    && /bin/kafka_exporter --kafka.server=${kafka_server_addr} --tls.enabled --no-sasl.handshake --tls.insecure-skip-tls-verify --tls.ca-file=/etc/exmple2/ca-cert --tls.cert-file=/etc/exmple2/kafka.client.keystore.pem --tls.key-file=/etc/exmple2/kafka.client.keystore.key --sasl.enabled --sasl.mechanism=sasl_mechanism --sasl.oauth.token-endpoint=${sasl_oauth_token_endpoint} --sasl.oauth.client-id=${sasl_oauth_client_id} --sasl.oauth.client-secret=${sasl_oauth_client_secret}
fi
fi
fi
fi
