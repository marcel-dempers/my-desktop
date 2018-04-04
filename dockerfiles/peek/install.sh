#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/peek/data

#Run peek
echo "
#peek contained.
alias peek='xhost local:root
docker run --rm -d \
-v /tmp/.X11-unix:/tmp/.X11-unix \
--device /dev/video0:/dev/video0 \
-v /var/run:/var/run \
--device /dev/dri \
-v \$HOME/Pictures:/home/root/Pictures \
-e DISPLAY=unix\$DISPLAY \
aimvector/peek peek'
" >> ~/.bashrc



      