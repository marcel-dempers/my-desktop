FROM debian:stretch

#documented http://www.deb-multimedia.org/
#ffmpeg requirement
RUN echo deb http://www.deb-multimedia.org stable main stretch \
    >>/etc/apt/sources.list && \
    apt-get update -oAcquire::AllowInsecureRepositories=true && \
    apt-get install -y --allow-unauthenticated deb-multimedia-keyring -oAcquire::AllowInsecureRepositories=true

RUN apt-get update && \
    apt-get install -y ffmpeg

RUN apt-get install -y git \
    cmake \
    valac \
    ffmpeg \
    libgtk-3-dev \
    libkeybinder-3.0-dev \libxml2-utils \
    gettext \
    txt2man

RUN git clone https://github.com/phw/peek.git && \
    mkdir peek/build && \
    cd peek/build && \
    cmake -DCMAKE_INSTALL_PREFIX=/usr -DGSETTINGS_COMPILE=OFF .. && \
    make package && \
    dpkg -i peek-*-Linux.deb