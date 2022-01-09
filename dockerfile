FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install sudo
RUN apt-get -y install wget

ENV DEBIAN_FRONTEND noninteractive
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
RUN apt-get install -y tzdata
RUN dpkg-reconfigure --frontend noninteractive tzdata

#This stops prompting for accepting EULA
RUN echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections
RUN apt-get install -y --no-install-recommends fontconfig ttf-mscorefonts-installer

#RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
#USER docker
#CMD /bin/bash

RUN sudo wget https://gist.githubusercontent.com/gustavf/cccd446fcf240dc7538ad911e594834a/raw/0208b6c55e68e78c3948183c5f663e69097cea0e/install.sh
RUN sudo wget https://gist.githubusercontent.com/edharman/dc8dc37d5f9216c97c345c6b0abab251/raw/4a11cfbc508eed48ce6143e2b4c50850d393bd7f/opencv4_install.sh
RUN chmod +x *.sh
RUN ./install.sh
