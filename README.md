# Docker image for TURN server
A Docker container with the [Coturn TURN server](https://github.com/coturn/coturn)

```
docker run -d --net=host --restart=always rofl256/turnserver usernameAdmin passwordAdmin realm listingIps relayIp externalIp authSecret
```

Turn server is listening on :443 and 4433 (TLS). 

You have to use the authSecret to generate a user and password for each connection! Example: [HERE](https://stackoverflow.com/questions/35766382/coturn-how-to-use-turn-rest-api/35767224#35767224) 

## Examples
realm=myturnserver

listingIps="IP1 IP2" //You can also use it with only one IP

relayIp="IP1"

externalIp="IP1"

authSecret="yourSecret"
