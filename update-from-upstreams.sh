#!/bin/bash
CURRENT_BRANCH=`git branch |grep "*" | sed 's/* //g'`
echo "Current branch is: $CURRENT_BRANCH"
git fetch upstream-ro && \
git checkout master && \
git merge upstream-ro/master && \
git checkout libreelec-7.0 && \
git merge upstream-ro/libreelec-7.0 && \
git checkout $CURRENT_BRANCH
