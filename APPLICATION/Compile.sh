######## Compile ########
sudo apt install -y cmake
sudo apt install -y cmake-extras
sudo apt install -y extra-cmake-modules

# FIX: Python Extension Not Loading: (pyfalkon) Clang diagnostic messages fatal stddef.h file not found
sudo apt install -y clang




# echo $(lsb_release -cs)

# notify-send --icon=applications-internet --expire-time=0 --app-name="Package" "
# Optional Sources:
# Check: Source code repositories
# "
# software-properties-gtk

# sudo tee /etc/apt/sources.list << EOF
# deb http://deb.debian.org/debian/ testing main contrib non-free
# deb-src http://deb.debian.org/debian/ testing main contrib non-free

# deb http://deb.debian.org/debian/ testing-updates main contrib non-free
# deb-src http://deb.debian.org/debian/ testing-updates main contrib non-free

# deb http://deb.debian.org/debian-security testing-security main
# deb-src http://deb.debian.org/debian-security testing-security main
# EOF

# sudo apt update




# git clone --recurse-submodules https://github.com/criticalsoft/Browser_Falkon.git ./Falkon_Glass/
# cd ./Falkon_Glass/APPLICATION/

rm -r ~/Falkon_Glass/




# Debian: FIX: Could not find a configuration file for package "****" that is compatible with requested version "####"
# git clone https://invent.kde.org/sdk/kdesrc-build
# 
# cd ./kdesrc-build/
# ./kdesrc-build --initial-setup
# ./kdesrc-build --include-dependencies falkon
# 
# xdg-open ~/kde/




# FIX: Could not find a package configuration file provided by "Qt5WebChannel"
# sudo apt install -y libqt5webchannel5-dev
sudo apt build-dep -y falkon

sudo apt install -y libkf5archive-dev

#FIX: Python Extension Not Loading
# Neon: The following packages have unmet dependencies
sudo apt install -y libpyside2-dev
sudo apt install -y libshiboken2-dev


## git clone https://github.com/KDE/falkon.git
## git reset --hard 2853a1ee88c6d62a21f2e72d601a1d3c45916c5b


mkdir -p ./falkon/build/
cd ./falkon/build/

# FIX: Source Path Change
rm -f ./CMakeCache.txt
cmake ../ -DCMAKE_INSTALL_PREFIX=~/Falkon_Glass/

# make
# FIX: BuiltIn Extension Not Loading
make install
cd -




######## Package ########
#Check
#sudo grep libFalkonPrivate.so /proc/*/maps


cd ~/
zip ./Falkon_Glass.zip -r ./Falkon_Glass/
cd -
rm -f ./Falkon_Glass.zip
mv ~/Falkon_Glass.zip ./



