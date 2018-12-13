#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/gcloud

#Run gcloud
echo "
#gcloud contained.
alias g='docker run -it \
--rm \
-v $HOME/Applications/contained/gcloud:/root/.config/gcloud \
-v \$PWD:/work \
-v ~/.kube:/root/.kube \
--entrypoint \"bash\" \
aimvector/gcloud'
alias gcloud=g" >> ~/.bashrc
