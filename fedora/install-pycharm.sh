#!/bin/sh
SHORTCUT="[Desktop Entry]
Name=Pycharm Pro
Comment=Develop Python Projects
Exec=/usr/local/pycharm-pro/bin/pycharm.sh
Icon=/usr/local/pycharm-pro/bin/pycharm.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Development;Education;IDE;"
 
cp -v "pycharm-professional-2016.1.2.tar.gz" "/usr/src/pycharm-professional.tar.gz"
cd /usr/src
tar -xvf "pycharm-professional.tar.gz"
cd "pycharm-2016.1.2"
mkdir -pv "/usr/local/pycharm-pro"
mv -fv * "/usr/local/pycharm-pro/"
ln -s /usr/local/pycharm-pro/bin/pycharm.sh /usr/local/bin/pycharm-pro
chmod +x "/usr/local/bin/pycharm-pro"
echo "${SHORTCUT}" > "/usr/share/applications/pycharm.desktop"
 
echo "Finish!"
