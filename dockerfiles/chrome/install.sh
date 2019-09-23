#!/bin/bash


#pre-requisites
mkdir -p $HOME/containers/chrome/
sudo chown -R 1000:1000 $HOME/containers/chrome/
# MAKE SURE docker has permission to ls -la ~/containers/chrome/

#Run chrome
echo "
#chrome contained.
alias chrome='xhost local:root
docker run -d \
--rm \
--net host \
--cpuset-cpus 2 \
--memory 1024mb \
--security-opt seccomp=$HOME\seccomp-chrome.json \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/containers/chrome/:/chrome-profile \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/Downloads:/home/chrome/Downloads \
--device /dev/snd:/dev/snd \
--device /dev/dri \
-v /dev/shm:/dev/shm \
--name chrome \
aimvector/chrome'
" >> ~/.bashrc
