#!/bin/sh
mdbook build
mv book ..
git checkout gh-pages
mv ../book/* .
rm -rf ../book/
git add .
git commit -m "Update"
git checkout master

