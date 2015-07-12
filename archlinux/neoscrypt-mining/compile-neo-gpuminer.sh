cd neo-gpuminer
chmod +x autogen.sh
./autogen.sh
./configure CFLAGS="-O2 -Wall -march=native"
make
