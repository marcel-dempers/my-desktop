#!/bin/bash

#Run vlc
echo "
#vlc contained.
alias vlc='xhost local:root
docker run -d \
--rm \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/Downloads:/home/vlc/Downloads \
--device /dev/snd:/dev/snd \
--device /dev/dri \
aimvector/vlc'
" >> ~/.bashrc
