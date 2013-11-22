#!/bin/sh
VIMRC_PATH=~/.vimrc
VIM_PATH=~/.vim

cp -f .vimrc $VIMRC_PATH
echo 'copy .vimrc'

if [ ! -e $VIM_PATH ];then
    mkdir $VIM_PATH
    echo "create $VIM_PATH"
fi

cp -rf autoload  $VIM_PATH
echo "copy autoload to $VIM_PATH"

cp -rf plugin  $VIM_PATH
echo "copy plugin to $VIM_PATH"

cp -rf bundle  $VIM_PATH
echo "copy bundle to $VIM_PATH"
