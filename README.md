# Bareos File Daemon

* Port: `9102`
* Config: `/etc/bareos/bareos-fd.conf`
  A template gets copied if the file does not exists.

```

docker run \
 --rm \
 --name bareos-fd \ 
 -p 9102:9102 \ 
 -v /:/mnt:ro \
 -v  /data/etc:/etc/bareos \
 --hostname bareos-fd \
 djeshkov/bareos-fd

```

