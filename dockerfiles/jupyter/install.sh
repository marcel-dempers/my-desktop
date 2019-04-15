#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/jupyter

#Run jupyter
echo "
#jupyter contained.
alias jupyter='xhost local:root
docker run -d \
--rm \
--net host \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/Applications/contained/jupyter/:/data \
-w /data \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/Downloads:/home/chrome/Downloads \
aimvector/jupyter'
" >> ~/.bashrc
