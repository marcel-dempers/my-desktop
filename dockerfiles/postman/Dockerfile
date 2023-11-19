FROM debian:bullseye

RUN apt-get update && apt-get install -y curl \
    libgtk2.0-0 \
    libx11-xcb-dev \
    libxtst6 \
    libxss1 \
    libgconf-2-4 \
    libnss3-dev \
    libasound2

RUN mkdir /postman && cd /postman && \
    curl -o postman.tar.gz -O https://dl.pstmn.io/download/latest/linux64 && \
    tar xzf postman.tar.gz

WORKDIR /postman/Postman/

ENTRYPOINT ["/postman/Postman/Postman"]