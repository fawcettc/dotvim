#!/usr/bin/env bash

info () {
  printf "  [ \033[00;34m..\033[0m ] $1\n"
}

info 'Installing Vundle'
git clone https://github.com/gmarik/vundle.git ./bundle/vundle

ln -s ~/.vimrc ./vimrc

vim +PluginInstall +qall
