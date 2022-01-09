FROM ubuntu:12.04
#CMD apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*
#RUN ["apt-get", "update"]
#RUN ls -l /etc/localtime

RUN apt-get update

RUN wget https://gist.githubusercontent.com/edharman/dc8dc37d5f9216c97c345c6b0abab251/raw/4a11cfbc508eed48ce6143e2b4c50850d393bd7f/install.sh
