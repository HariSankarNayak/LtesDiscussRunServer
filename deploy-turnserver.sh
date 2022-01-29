echo $1 #user
echo $2 #password
echo $3 #realm
echo $4 #listening ips
echo $5 #replay ip
echo $6 #external ip
echo $7 #authsecret

echo "listening-port=443
tls-listening-port=4433
listening-ip="$4"
relay-ip="$5"
external-ip="$6"
realm=$3
server-name=$3
use-auth-secret=true
static-auth-secret="$7"
lt-cred-mech
userdb=/var/lib/turn/turndb
# use real-valid certificate/privatekey files
cert=/etc/ssl/turn_server_cert.pem
pkey=/etc/ssl/turn_server_pkey.pem
 
no-stdout-log"  | tee /etc/turnserver.conf


turnadmin -a -u $1 -p $2 -r $3

turnserver

echo "TURN server running. IP: "$externalIp" Username: $1, password: $2"
