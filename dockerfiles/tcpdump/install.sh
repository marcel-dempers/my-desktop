#!/bin/bash

#Run tcpdump
echo "
#tcpdump contained.
alias tcpdump='xhost local:root
docker run -d \
--rm \
--net host \
-v /etc/localtime:/etc/localtime:ro \
-v \$PWD:/tcpdump \
aimvector/tcpdump'
" >> ~/.bashrc
