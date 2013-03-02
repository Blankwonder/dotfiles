#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfn $DIR/.vimrc ~/.vimrc
ln -sfn $DIR/.bashrc ~/.bashrc
ln -sfn $DIR/.multitailrc ~/.multitailrc
ln -sfn $DIR/.screenrc ~/.screenrc
