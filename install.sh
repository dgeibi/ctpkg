#!/bin/bash

export iosevka_ver="$(git ls-remote -t https://github.com/be5invis/Iosevka | sort -t '/' -k 3 -V -r | grep -m 1 -oE '[0-9]+\.[0-9]+\.[0-9]+[a-z]?')"

for dir in ./ct-*
do
    cd "$dir" || exit
    rm -f ./*.part
    makepkg -rsicC --needed --noconfirm && cd .. || exit
done
