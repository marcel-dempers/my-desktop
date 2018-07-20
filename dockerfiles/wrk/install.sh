#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/wrk

#Run wrk
echo "
#wrk contained.
alias wrk='docker run -it \
--rm \
--net host \
-v \$PWD:/wrk \
aimvector/wrk'
" >> ~/.bashrc
