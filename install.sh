#!/bin/bash

sudo -v
for dir in ./ct*
do
    cd $dir
    makepkg -rsi --noconfirm --needed && cd ..
done
