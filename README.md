# Bareos File Daemon

* Port: `9102`
* Config: `/data/etc/bareos-fd.con`

```

docker run \
  --rm \
  --name bareos-fd \
  -v /:/mnt \
  -p 9102:9102 \
  -v /data/etc:/etc/bareos \
  --hostname bareos-fd \
 djeshkov/bareos-fd

```


@ Docker composer

```

curl -L https://raw.githubusercontent.com/djeshkov/bareos-fd/master/docker-compose.yaml > /tmp/docker-compose.yaml
docker-compose up

```
