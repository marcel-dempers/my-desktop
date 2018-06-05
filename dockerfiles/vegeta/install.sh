#!/bin/bash

#Run vegeta
echo "
#vegeta contained.
alias vegeta='docker run -it \
--rm \
--net host \
-v $PWD:/data \
aimvector/vegeta'
" >> ~/.bashrc
