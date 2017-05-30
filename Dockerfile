FROM m0kimura/ubuntu-base

VOLUME /home/docker
ENV USER=docker HOME=/home/docker
USER docker
WORKDIR /home/docker
CMD /bin/bash

