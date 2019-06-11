#!/bin/bash

#Run airtame
echo "
#airtame contained.
alias airtame='xhost local:root
docker run -d \
--rm \
--net host \
--ipc host \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
--device /dev/snd:/dev/snd \
--device /dev/dri \
-v /dev/shm:/dev/shm \
-v /dev/bus/:/dev/bus/ \
--device /dev/video0:/dev/video0 \
aimvector/airtame'
" >> ~/.bashrc
