#!/bin/bash

mkdir -p $HOME/Applications/contained/shutter/

#Run shutter
echo "
#shutter contained.
alias shutter='xhost local:root
docker run -d \
--rm \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/Applications/contained/shutter/.shutter/:/root/.shutter \
-v $HOME/Applications/contained/shutter/plugins/:/usr/share/shutter/resources/system/plugins \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/Pictures:/home/root/Pictures \
--name shutter \
aimvector/shutter'
" >> ~/.bashrc