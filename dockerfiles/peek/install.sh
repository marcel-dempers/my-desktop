#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/peek/data

#Run peek
echo "
#peek contained.
alias peek='xhost local:root
docker run --rm -d \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /var/run/dbus:/var/run/dbus \
-e DISPLAY=unix\$DISPLAY \
aimvector/peek peek'
" >> ~/.bashrc
