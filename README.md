# Docker image for ssb-server

## Variables

SSB_PUB_HOSTNAME: public hostname of the server

SSB_PUB_PORT: port of the server

## Start

Use pure docker to start
```
docker run --rm --name ssb-server \
           -it -v sb-data:/home/ssb/.ssb \
           -e SSB_PUB_PORT=8008 \
           -e SSB_PUB_HOSTNAME=ssb.pacov.city \
           -p 18008:18008 ssb-pub-server
```

Use docker compose to start:
```
docker-compose -f ssb-server.yml up -d
```