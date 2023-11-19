#!/bin/bash


#Run postman
echo "
#postman contained.
alias postman='xhost local:root
docker run -d --rm \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix\$DISPLAY \
--net host \
--name postman \
aimvector/postman'
" >> ~/.bashrc