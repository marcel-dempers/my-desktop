FROM debian:sid
RUN apt-get update && apt-get install -y wget \
	libcanberra-gtk* \
	libasound2 \
	libatomic1 \
	libgconf-2-4 \
 	libnotify4 \
	libnspr4 \
	libx11-xcb1 \
        libxss1 \
	libnss3 \
	libnss3 \
	libnss3 \
	libappindicator1 \
	libc++1

RUN mkdir /discord && cd /discord && \
	wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" && \
	dpkg -i discord.deb

COPY start.sh .
RUN chmod +x start.sh

ENTRYPOINT ./start.sh
