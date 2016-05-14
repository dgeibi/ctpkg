#!/bin/bash

sudo -v
for dir in ./ct*
do
    cd "$dir" || exit
    makepkg -rsicC --noconfirm --needed && cd .. || exit
done
