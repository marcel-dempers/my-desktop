#!/bin/bash


#Run jmeter
echo "
#jmeter contained.
alias jmeter='xhost local:root
docker run -d \
--net host \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/git:/git \
-v $HOME/personal/git:/personal/git \
-v $HOME/Downloads:/Downloads \
aimvector/jmeter'
" >> ~/.bashrc