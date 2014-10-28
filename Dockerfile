FROM ubuntu:14.04
MAINTAINER TAGOMORI Satoshi <tagomoris>
MAINTAINER Sho Kusano <rosylilly@aduca.org>

RUN apt-get update -q && apt-get upgrade -yq
RUN apt-get install -yq git curl tar gzip build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev

RUN mkdir -p /usr/local/xbuild
ENV PATH $PATH:/usr/local/xbuild
ADD . /usr/local/xbuild
RUN mv /usr/local/xbuild/install /usr/local/xbuild/xbuild-install
