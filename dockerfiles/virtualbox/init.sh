#!/bin/bash

sudo docker cp virtualbox:/usr/lib/virtualbox /usr/lib
sudo docker cp virtualbox:/usr/share/virtualbox /usr/share
sudo rm -rf /dev/vboxdrv
sudo /usr/lib/virtualbox/vboxdrv.sh setup
sudo modprobe vboxdrv
