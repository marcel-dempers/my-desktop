#!/bin/bash

mkdir -p $HOME/Applications/contained/azurestorageexplorer/
#Run sqlops
echo "
#azurestorageexplorer contained.
alias azurestorageexplorer='xhost local:root
docker run -d \
--rm \
--net host \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
--device /dev/dri \
-v /dev/shm:/dev/shm \
aimvector/azurestorageexplorer'
" >> ~/.bashrc