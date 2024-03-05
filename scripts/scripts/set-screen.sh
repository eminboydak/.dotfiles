#!/bin/sh

screenlayout=$HOME/.screenlayout/screenlayout.sh

if [ -f $screenlayout ]; then
    bash $screenlayout
fi
