#!/bin/sh
PLUGIN_DIR=~/.vim/plugin/

if [ ! -e $PLUGIN_DIR ];then
    mkdir -p $PLUGIN_DIR
fi

if [ ! -e $PLUGIN_DIR/mru.vim ];then
    cp mru.vim  $PLUGIN_DIR
fi

if [ ! -e $PLUGIN_DIR/taglist.vim ];then
    cp taglist.vim  $PLUGIN_DIR
fi

if [ ! -e $PLUGIN_DIR/cscope_map.vim ];then
    cp cscope_map.vim  $PLUGIN_DIR
fi



