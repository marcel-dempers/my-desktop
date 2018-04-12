#!/bin/bash

#Run Meld
echo "
#meld containerd.
alias meld='xhost local:root
docker run -d \
--rm \
--net host \
-v /tmp/.X11-unix:/tmp/.X11-unit \
-e DISPLAY=unix\$DISPLAY \
-v \$PWD:/root/compare \
aimvector/meld meld'
" >> ~/.bashrc
