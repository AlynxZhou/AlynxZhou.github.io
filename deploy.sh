#!/bin/bash

git add --all
if [[ -n "${*}" ]]; then
    git commit --message "${*}"
else
    git commit --message "Updated site."
fi
git push --set-upstream origin master

#rsync -azv --exclude=.git --exclude=.gitignore --exclude=.nojekyll --delete . alynx@172.105.212.166:~/alynx.xyz/
