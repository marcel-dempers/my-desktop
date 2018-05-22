#!/bin/bash

#pre-requisites
mkdir -p $HOME/Applications/contained/fiddler

#Run fiddler
echo "
#fiddler contained.
alias fiddler='xhost local:root
docker run -d \
--name fiddler \
--rm \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/Applications/contained/fiddler/:/root/.mono/ \
--device /dev/dri \
-p 8888:8888 \
-v /dev/shm:/dev/shm \
-e DISPLAY=unix\$DISPLAY \
aimvector/fiddler'
" >> ~/.bashrc