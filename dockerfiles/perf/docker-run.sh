#!/bin/bash
docker run -it \
--rm \
--privileged \
--ipc host \
--pid host \
-v $PWD:/out \
-v /var/lib/docker:/var/lib/docker \
-v /sys:/sys:ro \
-v /etc/localtime:/etc/localtime:ro \
-v /run:/run \
-v /var/log:/var/log \
--net host \
aimvector/perf:4.9.125 record -p 1 -ag -F 97 -- sleep 30