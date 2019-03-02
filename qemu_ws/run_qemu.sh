#!/bin/bash
tar jxvf vm.tar.bz2
chmod 777 -R vm
rm vm.tar.bz2
cd vm
./mkrootfs.sh
./boot.sh
