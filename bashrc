alias kubetools='docker run -it --rm  -v ~/.azure:/root/.azure -v $PWD:/var/lib/src -v ~/.kube:/root/.kube --rm --network=host --workdir /var/lib/src aimvector/kube-tools'

#zoom contained.
alias zoom='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --device /dev/video0 --device /dev/snd:/dev/snd --device /dev/dri -v /dev/shm:/dev/shm aimvector/zoom-us zoom'


#chrome contained.
alias chrome='xhost local:root
docker run -d --rm --net host --cpuset-cpus 2 --memory 1024mb -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/marcel/Applications/contained/chrome/profile/:/data -e DISPLAY=unix$DISPLAY -v /home/marcel/Downloads:/home/chrome/Downloads --device /dev/snd:/dev/snd --device /dev/dri -v /dev/shm:/dev/shm --name chrome aimvector/chrome'


#skype contained.
alias skype='xhost local:root
docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v /home/marcel/.Skype:/home/skype/.Skype --device /dev/snd:/dev/snd --device /dev/video0 --name skype aimvector/skype'


#postman contained.
alias postman='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --net host --name postman aimvector/postman'

#vbox contained.
alias vbox='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/vboxdrv:/dev/vboxdrv -e DISPLAY=unix$DISPLAY --privileged -v /dev/:/dev/ -v ~/Applications/contained/vbox/machines:"/root/VirtualBox VMs" -v ~/Applications/contained/vbox/.config:/root/.config/VirtualBox -v ~/Downloads:/images --name virtualbox vbox'


#firefox contained.
alias firefox='xhost local:root
docker run -d --rm --net host --cpuset-cpus 1 --memory 512mb -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/marcel/Applications/contained/firefox/data:/root/.mozilla -e DISPLAY=unix$DISPLAY -v /home/marcel/Downloads:/home/root/Downloads --device /dev/snd --device /dev/dri -v /dev/shm:/dev/shm --name firefox jess/firefox'


#shutter contained.
alias shutter='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/marcel/Applications/contained/shutter/.shutter/:/root/.shutter -v /home/marcel/Applications/contained/shutter/plugins/:/usr/share/shutter/resources/system/plugins -e DISPLAY=unix$DISPLAY -v /home/marcel/Pictures:/home/root/Pictures --name shutter aimvector/shutter'

#jmeter contained.
alias jmeter='xhost local:root
docker run -d --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v /home/marcel/git:/git -v /home/marcel/personal/git:/personal/git aimvector/jmeter'


#powershell contained.
alias powershell='docker run -it --rm --net host jess/powershell'


#vscode contained.
alias vs='xhost local:root
docker run -d --rm -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/marcel/Applications/contained/vscode/:/home/user -v /home/marcel/git:/home/user/git -v /home/marcel/personal/git:/home/user/personal/git -e DISPLAY=unix$DISPLAY --device /dev/dri -v /dev/shm:/dev/shm aimvector/vscode'
