######## Dependence ########
#Transparent Application Theme (Kvantum Manager)
#Blur Desktop Effect (KDE Plasma)
#xdg-open "https://github.com/criticalsoft/Theme_QT"




######## Install ########
sudo apt install -y falkon
# sudo apt purge falkon




rm -r ~/Falkon_Glass/
unzip ./Falkon_Glass.zip -d ~/


mkdir -p ~/.local/bin/
#ReLogIn
rm ~/.local/bin/falkon
tee ~/.local/bin/falkon << EOF
#./build/prefix.sh
XDG_DATA_DIRS=\$XDG_DATA_DIRS:\$HOME/Falkon_Glass/share/ LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:\$HOME/Falkon_Glass/ \$HOME/Falkon_Glass/bin/falkon --new-window %u
EOF
chmod +x ~/.local/bin/falkon
whereis falkon




mkdir -p ~/.local/share/applications/
tee ~/.local/share/applications/org.kde.falkon.desktop << EOF
[Desktop Entry]
Name=Falkon Glass
GenericName=Web Browser
Exec=XDG_DATA_DIRS=\$XDG_DATA_DIRS:\$HOME/Falkon_Glass/share/ LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:\$HOME/Falkon_Glass/ \$HOME/Falkon_Glass/bin/falkon --new-window %u
Type=Application
Icon=falkon
Categories=Network;WebBrowser;
MimeType=text/html;application/xhtml+xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;application/x-mimearchive;
EOF




# FIX: Could not load the Qt platform plugin "xcb" (XUbuntu)
sudo apt install -y libqt5gui5

# FIX: error while loading shared libraries: libvo-amrwbenc.so.0
sudo apt install -y libvo-amrwbenc0




# FIX: Python Extension Not Loading: could not import module PySide2.QtWebEngineCore
# sudo apt install -y python3-pyside2.qtwebenginecore
sudo apt install -y python-is-python3

sudo apt install -y python3-pip
sudo pip3 install --upgrade pip

# pip install PySide6
pip install PySide2
# pip install PyQtWebEngine



