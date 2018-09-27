#!/bin/bash

#Run gpick
echo "
#gpick contained.
alias gpick='xhost local:root
docker run -d \
--rm \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
aimvector/gpick'

alias colorpicker=gpick
alias colorpic=gpick
" >> ~/.bashrc