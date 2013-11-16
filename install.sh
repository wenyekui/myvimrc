#!/bin/sh
PLUGIN_DIR=~/.vim/plugin

if [ ! -e $PLUGIN_DIR ];then
    mkdir -p $PLUGIN_DIR
fi

cp -rf  plugin/*  $PLUGIN_DIR 

