#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
DIR="$( dirname "$SOURCE" )"

if [ $DIR = '.' ]
then
DIR="$(pwd)"
fi

ln -sf $DIR/.vimrc ~/.vimrc
ln -sf $DIR/.bash_profile ~/.bash_profile
ln -sf $DIR/.bashrc ~/.bashrc
ln -sf $DIR/.multitailrc ~/.multitailrc
ln -sf $DIR/.screenrc ~/.screenrc
