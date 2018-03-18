# My Desktop

I run all my apps on containers. <br/>
This repo is inspired by Jessie Frazelle [dockerfiles](https://github.com/jessfraz/dockerfiles)

Some of my apps are just bashrc aliases to her docker images on hub.docker.com
Other images I have had to hack around and made few tweaks :)

## Chrome

```
cd /dockerfiles/chrome
./install.sh
```

## Firefox

```
cd /dockerfiles/firefox
./install.sh
```

## Postman

```
cd /dockerfiles/postman
./install.sh
```
## Skype

```
cd /dockerfiles/skype
./install.sh
```
Note: For skype there is some extra magic required.
Once the container is running you have to start it manually.
For some reason, docker stops the container when skype is started automatically. 

```
docker exec -it skype bash
exec sudo -u skype skypeforlinux

```

## Virtualbox

```
cd /dockerfiles/virtualbox
./install.sh
```

## Visual Studio

```
cd /dockerfiles/vscode
./install.sh
```

## Zoom US

```
cd /dockerfiles/zoom
./install.sh
```
