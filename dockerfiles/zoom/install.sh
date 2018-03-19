#!/bin/bash

#Run zoom
echo "
#zoom contained.
alias zoom='xhost local:root
docker run -d --rm \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
--device /dev/video0 \
--device /dev/snd:/dev/snd \
--device /dev/dri \
-v /dev/shm:/dev/shm \
aimvector/zoom-us zoom'
" >> ~/.bashrcs