#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/awscli

#Run awscli
echo "
#awscli contained.
alias awscli='docker run -it \
--rm \
-v $HOME/Applications/contained/awscli/:/root/.aws/ \
-v \$PWD:/work \
--entrypoint \"bash\" \
aimvector/awscli'" >> ~/.bashrc
