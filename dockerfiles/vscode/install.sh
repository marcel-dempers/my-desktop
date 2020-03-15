#!/bin/bash

#pre-requisite
mkdir -p ~/containers/vscode/
#Run vscode
echo "
#vscode contained.
alias vs='xhost local:root
docker run -d \
--rm \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/Applications/contained/vscode/:/home/user \
-v $HOME/git:/home/user/git \
-v $HOME/personal/git:/home/user/personal/git \
-v $HOME/Downloads:/home/user/Downloads \
-e DISPLAY=unix\$DISPLAY \
--security-opt seccomp=~/containers/vscode/seccomp-vscode.json \
--device /dev/dri \
-v /dev/shm:/dev/shm \
aimvector/vscode'
" >> ~/.bashrc