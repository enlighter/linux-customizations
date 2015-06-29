cd darkcoin-cpuminer-1.3-avx-aes
chmod +x autogen.sh
./autogen.sh
./configure CFLAGS="-O3 -march=native"
make
