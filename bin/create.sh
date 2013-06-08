#!/bin/bash -e

set TEMPLATE=$1
set REPOURL=$2

git clone git@github.com:versionone/${REPOURL}.git
cd $REPOURL
cp ../templates/${TEMPLATE}/* .
git commit -am "standard boilerplate"
git push
cd ..
