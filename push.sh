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
git push -u coding master

rsync -azv --exclude=.git --exclude=.gitignore --exclude=.nojekyll --delete . alynx@198.13.41.4:~/alynx.xyz/
