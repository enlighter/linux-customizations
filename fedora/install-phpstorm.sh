#!/bin/sh
SHORTCUT="[Desktop Entry]
Name=PHP Storm
Comment=Develop PHP Projects
Exec=/usr/local/phpstorm/bin/phpstorm.sh
Icon=/usr/local/phpstorm/bin/webide.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Development;Education;IDE;WebDevelopment;"
 
cp -v "PhpStorm-2016.1.tar.gz" "/usr/src/phpstorm.tar.gz"
cd /usr/src
tar -xvf "phpstorm.tar.gz"
cd "PhpStorm-145.258.2"
mkdir -pv "/usr/local/phpstorm"
mv -fv * "/usr/local/phpstorm/"
ln -s /usr/local/phpstorm/bin/phpstorm.sh /usr/local/bin/phpstorm
chmod +x "/usr/local/bin/phpstorm"
echo "${SHORTCUT}" > "/usr/share/applications/phpstorm.desktop"
 
echo "Finish!"
