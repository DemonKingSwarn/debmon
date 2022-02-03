#!/bin/sh
while read p; do sudo apt-get install "$p"; done <./notes.txt
sudo add-apt-repository ppa:cppiber/ppa
sudo apt-get update
sudo apt-get install rofi -y
cd ~/
apt-get install build-essential -y
add-apt-repository ppa:apt-fast/stable
apt-get update
apt-get -y install apt-fast
aptitude install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake -y
mkdir tmp
cd tmp
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
cd
git clone https://github.com/demonkingswarn/myst
cd myst
sudo make install
cd
git clone https://github.com/demonkingswarn/mydmenu
cd mydmenu
sudo make install
cd
git clone https://github.com/demonkingswarn/dotfiles-2
cd dotfiles-2
cd .config 
mv * ~/.config
cd ..
rm -rf .config
mv * ..
cd
ln -s ~/.config/zsh/.zshrc ~/.zshrc
ln -s ~/.config/shell/profile ~/.zprofile
chsh -s $(which zsh)
mkdir ~/Downloads/gitthings
cd Downloads/gitthings
git clone https://github.com/zsh-users/zsh-syntax-highlightingclone 
cd
zsh


