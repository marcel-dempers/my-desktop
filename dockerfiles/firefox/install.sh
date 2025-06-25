#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/firefox/data

#Run firefox
echo "
#firefox contained.
alias firefox='xhost local:root
docker run -d \
--rm \
--net host \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/containers/firefox/data:/root/.mozilla \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/Downloads:/root/Downloads \
--device /dev/snd \
--device /dev/dri \
-v /dev/shm:/dev/shm \
--name firefox \
aimvector/firefox'
" >> ~/.bashrc