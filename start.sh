#!/bin/sh
env
if [ ! -f  /home/ssb/.ssb/config ]; then 
    cat /config.initial | envsubst > /home/ssb/.ssb/config
fi

exec /usr/local/bin/ssb-server start