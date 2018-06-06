#!/bin/bash

#Run ab
echo "
#ab contained.
alias ab='docker run -it \
--rm \
aimvector/ab'
" >> ~/.bashrc
