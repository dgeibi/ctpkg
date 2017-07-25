#!/bin/bash

for dir in ./ct-*
do
    cd "$dir" || exit
    rm -f ./*.part
    PKGEXT='.pkg.tar' makepkg -rsicC --needed && cd .. || exit
done
