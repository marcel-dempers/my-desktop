#!/bin/bash

#Run powershell
echo "
#powershell contained.
alias powershell='docker run -it \
--rm \
--net host \
jess/powershell'
" >> ~/.bashrc