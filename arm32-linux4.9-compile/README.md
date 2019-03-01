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
###### https://blog.csdn.net/qq_33667170/article/details/80719405  

###### Fix Compilation Errors:  
1. cannot find compiler-gcc5.h   
```
cp linux-4.9/include/linux/compiler-gcc4.h linux-4.9/include/linux/compiler-gcc5.h  
```

2. arch/arm/kernel/return_address.c:66:7: error: redefinition of 'return_address'  
vim linux-4.9/arch/arm/include/asm/ftrace.h   
```
//extern inline void *return_address(unsigned int level)  
static inline void *return_address(unsigned int level)  
{  
	return NULL;  
}  
```
vim linux-4.9/arch/arm/kernel/return_address.c   
```
//void *return_address(unsigned int level)  
//{  
//		return NULL;  
//}   
```

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
