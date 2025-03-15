sudo rp exchange \
  client.rosenpass-secret \
  dev quantum-vpn0 \
  peer server.rosenpass-public \
  endpoint 192.168.1.152:9999 \
  allowed-ips 10.10.10.0/24
