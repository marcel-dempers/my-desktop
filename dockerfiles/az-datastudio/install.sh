#!/bin/bash

mkdir -p $HOME/Applications/contained/sqlops/
#Run sqlops
echo "
#sqlops contained.
alias sqlops='xhost local:root
docker run -d \
--rm \
--net host \
-v $HOME/Applications/contained/slqops/config/:/root/.config/azuredatastudio/ \
-v $HOME/Applications/contained/slqops/.azuredatastudio/:/root/.azuredatastudio/ \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
--device /dev/dri \
-v /dev/shm:/dev/shm \
aimvector/az-datastudio'
" >> ~/.bashrc