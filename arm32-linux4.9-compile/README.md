README
=======
### INFO
OS: ubuntu 18.04 LTS  
toolchain: gcc-5-arm-linux-gnueabi  32bit  
kernel:      4.9  
busybox:   1.20.2  

board: vexpress  
qemu: qemu-system-arm  

### BASE

### USAGE
###### Build a docker image from the Dckerfile
```
docker build -t arm32-linux4.9-compile ./
docker images | grep arm32-linux4.9
```
###### Run a docker container
```
docker run --name alias_name -ti arm32-linux4.9-compile /bin/bash
```

###### Build kernel image vm.tar.bz2 in the CONTAINER
```
./compile.sh
./mkvm.sh
```

###### Debug kernel in QEMU
```
mkdir debug_dir
cd debug_dir
docker cp docker_id:/root/vm.tar.bz2 ./
tar xjf vm.tar.bz2
cd vm
bash mkrootfs.sh 
bash boot.sh 
```
