#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/obs

#Run obs
echo "
#obs contained.
alias obs='xhost local:root
docker run -it \
--rm \
--net host \
--privileged \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v $HOME/Applications/contained/obs/:/data \
-v $HOME/.Xauthority:/root/obs-studio-portable/bin/64bit/.Xauthority \
-v /var/run/dbus:/var/run/dbus \
-e DISPLAY=unix\$DISPLAY \
--device /dev/video0 \
--device /dev/snd:/dev/snd \
--device /dev/dri \
-v /dev/shm:/dev/shm \
--name obs \
aimvector/obs /bin/bash'
" >> ~/.bashrc
