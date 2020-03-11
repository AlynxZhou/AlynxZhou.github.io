#!/bin/bash
#-*- coding: utf-8 -*-

# Filename: push.sh
# Created by AlynxZhou
# alynx.zhou@gmail.com, http://alynx.xyz/

git add .

if [[ -n "${*}" ]]; then
    git commit -m "${*}"
else
    git commit -m "Website updated."
fi

git push -u origin master

#rsync -azv --exclude=.git --exclude=.gitignore --exclude=.nojekyll --delete . alynx@172.105.212.166:~/alynx.xyz/
