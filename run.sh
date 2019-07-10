echo ${cac} > /etc/exmple2/ca-cert \
    && echo ${keystorePemc} > /etc/exmple2/kafka.client.keystore.pem \
    && echo ${keystoreKeyc} > /etc/exmple2/kafka.client.keystore.key 

nohup /bin/kafka_exporter --kafka.server=${kafka_server_addr} --tls.enabled --no-sasl.handshake --tls.insecure-skip-tls-verify --tls.ca-file=/etc/exmple2/ca-cert --tls.cert-file=/etc/exmple2/kafka.client.keystore.pem --tls.key-file=/etc/exmple2/kafka.client.keystore.key > /tmp.log &

num=0
while [ $num -eq 0 ]
do
   echo "Running"
done