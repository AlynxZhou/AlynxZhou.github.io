#!/bin/bash
#-*- coding: utf-8 -*-

### Filename: push.sh
## Created by 请叫我喵 | S-X-ShaX
# sxshax@gmail.com, http://sxshax.xyz/

git add .

if [[ -n "${*}" ]]; then
    git commit -m "${*}"
else
    git commit -m "Website updated."
fi

git push -u origin master
git push -u coding master
