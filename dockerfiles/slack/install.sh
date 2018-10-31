#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/slack

#Run slack
echo "
#slack contained.
alias slack='xhost local:root
docker run -d \
--rm \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
--device /dev/snd \
--device /dev/dri \
--device /dev/video0 \
--group-add audio \
--group-add video \
--ipc="host" \
-v $HOME/Applications/contained/slack:/root/.config/Slack \
-v $HOME/Downloads:/home/root/Downloads \
aimvector/slack'
" >> ~/.bashrc
