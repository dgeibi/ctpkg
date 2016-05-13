#!/bin/bash

sudo -v
for dir in ./ct*
do
    cd "$dir" || exit
    makepkg -rsi -C --noconfirm --needed && cd .. || exit
done
