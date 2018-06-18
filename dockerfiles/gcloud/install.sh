#!/bin/bash


#pre-requisites
mkdir -p $HOME/Applications/contained/gcloud

#Run gcloud
echo "
#gcloud contained.
alias g='docker run -it \
--rm \
-v $HOME/Applications/contained/gcloud:/root/.config/gcloud \
-v ~/.kube:/root/.kube \
aimvector/gcloud'
" >> ~/.bashrc
