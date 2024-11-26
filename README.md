# rosenpass

https://rosenpass.eu/docs/rosenpass-tool/start/

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

