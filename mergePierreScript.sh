#!/bin/bash

git add .
git commit -m "commit merge"
git push origin pierre

git checkout master
git merge pierre
git push -u origin master

git checkout pierre
