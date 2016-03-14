mkdir ~/bin
mkdir -p ~/lib/python2.6
mkdir -p ~/local/lib/python2.6/dist-packages
export http_proxy="http://10.3.100.207:8080/"
wget http://peak.telecommunity.com/dist/virtual-python.py
python virtual-python.py --no-site-packages
wget http://peak.telecommunity.com/dist/ez_setup.py
export https_proxy="http://10.3.100.207:8080/" ~/bin/python ez_setup.py
~/bin/easy_install virtualenv
~/bin/virtualenv --no-site-packages thereyouare
