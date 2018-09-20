#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/discord

#Run discord
echo "
#discord contained.
alias discord='xhost local:root
docker run -d \
--rm \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/Applications/contained/discord/config:/root/.config/discord/ \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/Downloads:/home/root/Downloads \
--device /dev/snd:/dev/snd \
--device /dev/dri \
-v /dev/shm:/dev/shm \
aimvector/discord'
" >> ~/.bashrc
