#!/bin/sh

containers=$(docker ps -f status=running --format "{{.Names}}")

for container in $@; do
    if echo $containers | grep -q $container; then
        echo "$container online " 
    else
        echo "$container offline" | mail -s "$container is down" my@email.address.com
        exit 1
    fi
done
exit 0
