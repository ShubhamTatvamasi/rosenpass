sudo rp exchange \
  server.rosenpass-secret \
  dev rosenpass0 \
  listen 192.168.1.152:9999 \
  peer client.rosenpass-public \
  allowed-ips 10.10.10.0/24
