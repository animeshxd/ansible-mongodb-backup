# generate ransom key
# openssl rand -base64 768 > mongodb_secret_key

# generate rsa private key for CA
openssl genrsa -out ca.key 2048


# generate self-signed certificate for CA
openssl req -new -x509 -days 365 -key ca.key -out ca.crt \
    -subj "/C=IN/ST=WEST BENGAL/L=KOLKATA/O=LOCAL/OU=LOCAL/CN=CALOCAL"

#generate ca pem file
cat ca.key ca.crt > ca.pem


# generate rsa private key for server
# openssl genrsa -out server.key 2048

# generate certificate signing request for mongodb-server-1
# openssl req -new -key server.key -out server.csr \
    # -subj "/C=IN/ST=WEST BENGAL/L=KOLKATA/O=LOCAL/OU=LOCAL/CN=mongodb-server-1"

# sign server certificate with CA
# openssl x509 -req -days 365 -in server.csr -CA ca.crt -CAkey ca.key -set_serial 01 -out server.crt

# generate pem file for server
# cat server.key server.crt > server.pem

# generate rsa private key for client
# openssl genrsa -out client.key 2048

# generate certificate signing request for client with SAN
# openssl req -new -key client.key -out client.csr \
    # -subj "/C=IN/O=LOCAL/OU=LOCAL/CN=client" 

# sign client certificate with CA
# openssl x509 -req -days 365 -in client.csr -CA ca.crt -CAkey ca.key -set_serial 02 -out client.crt

# generate pem file for client
# cat client.key client.crt > client.pem







