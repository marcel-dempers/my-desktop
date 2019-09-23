#!/bin/bash


#pre-requisites
mkdir -p $HOME/containers/jupyter

#Run jupyter
echo "
#jupyter contained.
alias jupyter='xhost local:root
docker run -d \
--rm \
--net host \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/containers/jupyter/:/data \
-w /data \
-e DISPLAY=unix\$DISPLAY \
aimvector/jupyter'
" >> ~/.bashrc
