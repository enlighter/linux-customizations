sudo pacman -Syu
sudo pacman -S base-devel getconf
sudo pacman -S python-mako python-six python-setuptools python-distutils-extra ipython ipython-notebook
sudo pacman -S python2 python2-application python2-cffi python2-chardet python2-mako python2-distutils-extra
sudo pacman -S curl cmake readline git git-core
sudo pacman -S qt4 libjpeg-turbo libpng lib32-libpng
sudo pacman -S ncurses imagemagick unzip gnuplot
sudo pacman -S zeromq python-pyzmq gcc-fortran
sudo pacman -S sdl2 sdl2_image sdl sdl_image
sudo pacman -S graphicsmagick nodejs fftw sox libsoxr
	cd /tmp/
    git clone https://github.com/xianyi/OpenBLAS.git
    cd OpenBLAS
    if [ $(getconf _NPROCESSORS_ONLN) = 1 ]; then
        make NO_AFFINITY=1 USE_OPENMP=0 USE_THREAD=0
    else
        make NO_AFFINITY=1 USE_OPENMP=1
    fi
    RET=$?; 
    if [ $RET -ne 0 ]; then
        echo "Error. OpenBLAS could not be compiled";
        exit $RET;
    fi
    sudo make install
    RET=$?; 
    if [ $RET -ne 0 ]; then
        echo "Error. OpenBLAS could not be installed";
        exit $RET;
    fi

git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; ./install.sh
source ~/.bashrc  # or ~/.zshrc.
th -e "print 'I just installed Torch! Yesss.'"