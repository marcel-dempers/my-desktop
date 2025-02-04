FROM debian:bullseye

RUN apt-get update && apt-get install -y curl \
    libatk-bridge2.0 \
    libgbm-dev \
    libdrm-dev \
    libgtk-3-0 \
    libxtst6 \
    libxss1 \
    libgconf-2-4 \
    libnss3-dev \
    libasound2

RUN curl -o /tmp/postman.tar.gz -O https://dl.pstmn.io/download/latest/linux64 && \
    tar -C /usr/bin/ -xzf /tmp/postman.tar.gz && \
    chmod +x /usr/bin/Postman

ENTRYPOINT ["/usr/bin/Postman"]
