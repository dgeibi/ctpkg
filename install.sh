#!/bin/bash


sudo -v
for dir in ct-chez-scheme-git-archive ct-pcap-dnsproxy ct-ttf-inziu-iosevka\
     ct-ibus-git ct-librime-git ct-ibus-rime-git
do
    cd "$dir" || exit
    rm ./*.part > /dev/null 2>&1
    makepkg -rsicC --needed && cd .. || exit
done
