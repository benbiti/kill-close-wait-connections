#!/bin/bash
netstat -tulnap | grep CLOSE_WAIT | awk '{print $4,$5}' |  sed 's/:/ /g' | sed 's/ffff//g' | while read line; do
    perl ./kill_close_wait_connections.pl $line
done

