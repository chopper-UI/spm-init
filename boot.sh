#!/bin/bash

CWD=$(dirname "$0")
THEME="$HOME/.spm/init/chopper"

cd $CWD

if ! which spm > /dev/null; then
    echo "install spm"
    npm install spm -g
else
    echo "you have installed spm"
fi

if [ ! -d $THEME ]; then
    echo "clone spm chopper init"
    git clone https://github.com/chopper-UI/spm-init.git $THEME
else
    echo "update spm chopper init"
    cd $THEME
    git pull origin master
    cd $CWD
fi
