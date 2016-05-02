#!/bin/sh
SHORTCUT="[Desktop Entry]
Name=Sublime Text 3
Comment=Edit text files
Exec=/usr/local/sublime-text-3/sublime_text
Icon=/usr/local/sublime-text-3/Icon/128x128/sublime_text.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Utility;TextEditor;"
 
curl -L "https://download.sublimetext.com/sublime_text_3_build_3103_x64.tar.bz2" -o "/usr/src/Sublime Text 3.tar.bz2"
cd /usr/src
tar -xvjf "Sublime Text 3.tar.bz2"
cd "Sublime Text 3"
mkdir -pv "/usr/local/sublime-text-3"
mv -fv * "/usr/local/sublime-text-3/"
ln -s /usr/local/sublime-text-3/sublime_text_3/sublime_text /usr/local/bin/subl
chmod +x "/usr/local/bin/subl"
echo "${SHORTCUT}" > "/usr/share/applications/sublime-text-3.desktop"
 
echo "Finish!"
