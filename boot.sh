#!/bin/bash

CWD=$(dirname "$0")
THEME="$HOME/.spm/init/chopper"

cd $CWD

if [ ! -d $THEME ]; then
    echo "clone nico chopper init"
    git clone https://github.com/chopper-UI/spm-init.git $THEME
else
    echo "update nico chopper init"
    cd $THEME
    git pull origin master
    cd $CWD
fi
