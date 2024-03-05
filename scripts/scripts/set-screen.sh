#!/bin/sh

screenlayout=$HOME/.screenlayout/main.sh

if [ -f $screenlayout ]; then
    bash $screenlayout
fi
