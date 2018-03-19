#!/bin/bash

#Run skype
echo "
#skype contained.
alias skype='xhost local:root
docker run -it --rm \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
-v $HOME/.Skype:/home/skype/.Skype \
--device /dev/snd:/dev/snd \
--device /dev/video0 \
--name skype \
aimvector/skype'
" >> ~/.bashrc

