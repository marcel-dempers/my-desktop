FROM ubuntu:focal

RUN apt-get update -y && apt-get install -y software-properties-common
RUN add-apt-repository ppa:shutter/ppa
RUN apt-get update && apt-get install -y shutter

ENTRYPOINT ["shutter"]
