FROM ubuntu:18.04 
WORKDIR /root/ 
RUN apt-get update && apt-get install bc xz-utils bzip2 wget make gcc gcc-5-arm-linux-gnueabi vim -y 
ADD busybox-1.20.2.tar.bz2 ./ 
ADD linux-3.16.tar.xz ./ 
COPY compile.sh mkvm.sh ./

