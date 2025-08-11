FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive

# install a few dependencies
RUN apt-get update 
RUN apt-get install -y ca-certificates curl wget gnupg sudo passwd adduser

# download oracle public key
RUN wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | gpg --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg --dearmor

# update apt sources
RUN echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian jammy contrib" >> /etc/apt/sources.list.d/virtualbox.list

RUN apt-get update
RUN apt-get install -y virtualbox-7.1
	 
ENTRYPOINT	[ "/usr/bin/virtualbox" ]