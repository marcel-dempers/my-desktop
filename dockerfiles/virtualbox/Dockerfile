FROM ubuntu:xenial

RUN buildDeps=' \
		ca-certificates \
		curl \
		wget \
		gnupg \
		libsdl-ttf2.0-0 \
		kmod \
		module-init-tools \
		linux-headers-generic \
		gcc \
		make \
		build-essential \
		dpkg-dev \
		binutils \
	' \
	&& set -x \
	&& mkdir -p /etc/xdg/QtProject \
	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl -sSL https://www.virtualbox.org/download/oracle_vbox.asc | apt-key add - \
	&& echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list.d/virtualbox.list \
	&& apt-get update 
	#&& apt-get install -y libvpx1 --force-yes
	# virtualbox-5.2 \
	# --no-install-recommends
	# && apt-get purge -y --auto-remove --force-yes $buildDeps

RUN wget -q http://security.ubuntu.com/ubuntu/pool/main/libv/libvpx/libvpx1_1.0.0-1_amd64.deb -O libvpx.deb && \
	apt install ./libvpx.deb

# I download 64bit package directly to ensure I it matches host arch
RUN wget -q https://download.virtualbox.org/virtualbox/5.2.8/virtualbox-5.2_5.2.8-121009~Ubuntu~trusty_amd64.deb -O vbox.deb && \
	apt install -y ./vbox.deb

# The virtualbox driver device must be mounted from host
VOLUME /dev/vboxdrv

ENTRYPOINT	[ "/usr/bin/virtualbox" ]