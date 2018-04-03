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
--cpuset-cpus 1 \
--memory 512mb \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/Applications/contained/firefox/data:/root/.mozilla \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/Downloads:/root/Downloads \
--device /dev/snd \
--device /dev/dri \
-v /dev/shm:/dev/shm \
--name firefox \
jess/firefox'
" >> ~/.bashrc