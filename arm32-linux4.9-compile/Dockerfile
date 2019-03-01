FROM ubuntu:18.04 
WORKDIR /root/ 
RUN apt-get update && apt-get install bc xz-utils bzip2 wget make gcc gcc-5-arm-linux-gnueabi vim openssh-server openssh-client -y 
ADD busybox-1.20.2.tar.bz2 ./ 
ADD linux-4.9.tar.xz ./ 
COPY compile.sh mkvm.sh sshd_config start.sh ./

EXPOSE 22
ENTRYPOINT ["start.sh"]
