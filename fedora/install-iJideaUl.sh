#!/bin/sh
SHORTCUT="[Desktop Entry]
Name=IntelliJ Idea Ultimate
Comment=Develop Web and Enterprise Projects
Exec=/usr/local/ideaUL/bin/idea.sh
Icon=/usr/local/ideaUL/bin/idea.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Development;Education;IDE;Debugger;WebDevelopment;"
 
cp -v "ideaIU-2016.1.1.tar.gz" "/usr/src/idea.tar.gz"
cd /usr/src
tar -xvf "idea.tar.gz"
cd "idea-IU-145.597.3"
mkdir -pv "/usr/local/ideaUL"
mv -fv * "/usr/local/ideaUL/"
ln -s /usr/local/ideaUL/bin/idea.sh /usr/local/bin/ideaUL
chmod +x "/usr/local/bin/ideaUL"
echo "${SHORTCUT}" > "/usr/share/applications/ideaUL.desktop"
 
echo "Finish!"
