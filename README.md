# Bareos File Daemon

* Port: `9102`
* Config: `/etc/bareos/bareos-fd.conf`
  A template gets copied if the file does not exists.

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

