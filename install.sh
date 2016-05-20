#!/bin/bash

sudo -v
for dir in ./ct*
do
    cd "$dir" || exit
    rm ./*.part > /dev/null 2>&1
    makepkg -rsicC --noconfirm --needed && cd .. || exit
done
