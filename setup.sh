#!/usr/bin/env bash

echo 'Installing Vundle...'
git clone https://github.com/gmarik/vundle.git ./bundle/vundle

echo 'Creating vimrc symlink'
ln -s ~/.vimrc ./vimrc

echo 'making backup and tempfiles directories'
mkdir ~/.vim/backup
mkdir ~/.vim/tempfiles

echo 'Performing vundle plugin installation'
vim +PluginInstall +qall

echo 'Compiling YouCompleteMe'
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

echo 'Performing vundle plugin installation again'
vim +PluginInstall +qall
