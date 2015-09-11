#Reorder reference file for GATk
#base image ubuntu
FROM ubuntu:14.04
# Maintainer 
MAINTAINER  Maurizio Polano "mauriziopolano@blu.it"

# update system
RUN apt-get update &&  apt-get upgrade -y && apt-get dist-upgrade -y 
RUN apt-get install unzip
RUN apt-get install -y python-software-properties python-dev python-pip
RUN apt-get install -y libfreetype6-dev libpng-dev libncurses5-dev vim git-core build-essential curl unzip wget
RUN apt-get  install -y python-biopython
RUN  apt-get build-dep python-biopython
CMD ["/bin/bash"]

