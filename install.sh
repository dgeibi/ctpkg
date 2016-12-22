#!/bin/bash

for dir in ./ct-*
do
    cd "$dir" || exit
    rm -f ./*.part
    makepkg -rsicC --needed && cd .. || exit
done
