cd cpuminer-neoscrypt
chmod +x autogen.sh
./autogen.sh
./configure CFLAGS="-O2 -fomit-frame-pointer -DASM -DOPT -DMINER_4WAY -DSHA256"
make
