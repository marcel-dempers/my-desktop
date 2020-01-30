#!/bin/bash


#pre-requisites
mkdir -p $HOME/containers/chromium/
sudo chown -R 1000:1000 $HOME/containers/chromium/
# MAKE SURE docker has permission to ls -la ~/containers/chromium/

#Run chrome
echo "
#chromium contained.
alias chromium='xhost local:root
docker run -d \
--rm \
--net host \
--security-opt seccomp=unconfined \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/containers/chromium/:/home/chromium/chromium-profile \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/Downloads:/home/chromium/Downloads \
--device /dev/snd:/dev/snd \
--device /dev/dri \
-v /dev/shm:/dev/shm \
--name chromium \
aimvector/chromium'
" >> ~/.bashrc
