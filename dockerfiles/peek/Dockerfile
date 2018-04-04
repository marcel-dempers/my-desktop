FROM ubuntu:16.04

#documented http://www.deb-multimedia.org/
#ffmpeg requirement
# RUN echo deb http://www.deb-multimedia.org stable main stretch \
#     >>/etc/apt/sources.list && \
#     apt-get update -oAcquire::AllowInsecureRepositories=true && \
#     apt-get install -y --allow-unauthenticated deb-multimedia-keyring -oAcquire::AllowInsecureRepositories=true

RUN apt-get update && apt-get install -y wget \
    ffmpeg \
    cmake \
    dbus-x11 \
    valac \
    gstreamer1.0-plugins-good \
    libgtk-3-dev \
    libcanberra-gtk-module \
    libcanberra-gtk3-module \
    libkeybinder-3.0-dev \libxml2-utils \
    gettext \
    txt2man

RUN wget https://github.com/phw/peek/archive/1.3.1.tar.gz && \
    tar -xzf 1.3.1.tar.gz && \
    rm 1.3.1.tar.gz && \
    mkdir peek-1.3.1/build && \
    cd peek-1.3.1/build && \
    cmake -DCMAKE_INSTALL_PREFIX=/usr -DGSETTINGS_COMPILE=OFF .. && \
    make package && \
    dpkg -i peek-*-Linux.deb
    
CMD [ peek ]
