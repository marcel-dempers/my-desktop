FROM debian:buster
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

# Add discord user
#Note: 
# hack: I use userid 1000 for chrome because user profile mount is added with userid 1000 
# and discord user can have different id if I don't specify it.
RUN groupadd -r discord && useradd -r -g discord -u 1000 -G audio,video discord \
    && mkdir -p /home/discord/Downloads && chown -R discord:discord /home/discord

USER discord

ENTRYPOINT [ "discord" ]
#ENTRYPOINT ./start.sh
