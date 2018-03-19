#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/chrome/profile

#Run chrome
echo "
#chrome contained.
alias chrome='xhost local:root
docker run -d \
--rm \
--net host \
--cpuset-cpus 2 \
--memory 1024mb \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/Applications/contained/chrome/profile/:/data \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/Downloads:/home/chrome/Downloads \
--device /dev/snd:/dev/snd \
--device /dev/dri \
-v /dev/shm:/dev/shm \
--name chrome \
aimvector/chrome'
" >> ~/.bashrc