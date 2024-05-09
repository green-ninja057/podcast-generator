#!/bin/bash

echo "=========================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${GITHUB_EMAIL}"
git config --global --add safe.directory  /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git psuh --set-upstream origin main

echo "=========================="