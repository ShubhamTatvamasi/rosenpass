# rosenpass

https://rosenpass.eu/docs/rosenpass-tool/start/

UDP Port: 9999

Download rosenpass:
```bash
wget https://github.com/rosenpass/rosenpass/releases/download/v0.2.2/rosenpass-x86_64-linux-0.2.2.tar
```

Extract:
```bash
sudo tar -xf rosenpass-x86_64-linux-0.2.2.tar -C /usr/local/
```

Install wg-tools:
```bash
sudo apt install wireguard-tools resolvconf
```

### Server

Generate secret keys for server:
```bash
rp genkey server.rosenpass-secret
```

Extract the public keys:
```bash
rp pubkey server.rosenpass-secret server.rosenpass-public
```


Copy each -public directory to the other peer
```bash
scp -r server.rosenpass-public user@client:/path/to/directory
```


### Client

Generate secret keys for client:
```bash
rp genkey client.rosenpass-secret
```

Extract the public keys:
```bash
rp pubkey client.rosenpass-secret client.rosenpass-public
```

Copy each -public directory to the other peer
```bash
scp -r client.rosenpass-public user@server:/path/to/directory
```

---


Install zip:
```bash
sudo apt install zip -y
```

Zip client secret and public key:
```bash
zip -r client_data.zip client.rosenpass-public/ client.rosenpass-secret/
```

Copy the `client_data.zip` locally:
```bash
scp ubuntu@192.168.1.153:/home/ubuntu/rosenpass/client_data.zip .
```

