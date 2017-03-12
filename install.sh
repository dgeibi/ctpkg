#!/bin/bash

for dir in ./ct-*
do
    cd "$dir" || exit
    rm -f ./*.part
    makepkg -rsicC --needed --noconfirm && cd .. || exit
done
