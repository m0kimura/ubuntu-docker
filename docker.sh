#!/bin/bash
#
  project=${PWD##*/}
##
  if [[ $1 = "build" ]]; then
    docker build -t ${project} .
  elif [[ $1 = "push" ]]; then
    dex push ${project}
    exit
  fi
  if [[ ! -e $HOME/temp-docker ]]; then
    mkdir $HOME/temp-docker
  fi
  docker run -it --rm --label type=open \
    -v $HOME/temp-docker:/home/docker \
    ${project}
##

