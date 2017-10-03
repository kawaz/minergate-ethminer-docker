FROM ubuntu:16.04
RUN apt-get -y update && \
  apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum \
  apt-get -y update && \
  apt-get -y install ethminer && \
  apt-get -y clean
