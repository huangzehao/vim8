#!/usr/bin/env bash
ln -sf ~/.vim/.vimrc ~/.vimrc
vim +PlugInstall +qall

git clone https://github.com/universal-ctags/ctags
sudo apt-get install autoconf cmake -y
cd ctags
./autogen.sh
./configure --prefix=/usr/local
make
make install
cd ..
sudo rm -rf ctags
cd ~/.vim/plugged/YouCompleteMe
./install.py
