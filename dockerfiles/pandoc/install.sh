#!/bin/bash

#Run pandoc
echo "
#pandoc contained.
alias pandoc='docker run -it \
--rm \
-v \$PWD:/convert \
aimvector/pandoc'
" >> ~/.bashrc