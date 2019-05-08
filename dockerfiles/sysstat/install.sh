#!/bin/bash

#Run sysstat
echo "
#sysstat contained.
alias sysstat='docker run -it \
--rm \
--net host \
--pid host \
-v /etc/localtime:/etc/localtime:ro \
aimvector/sysstat'
" >> ~/.bashrc
