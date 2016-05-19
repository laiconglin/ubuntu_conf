#! /bin/bash
mkdir -p ~/.vim/colors
cp wombat256mod.vim ~/.vim/colors/wombat256mod.vim
cp ~/.vimrc ./vimrc_bak_`date +%Y-%m-%d_%T`
cp vimrc ~/.vimrc
