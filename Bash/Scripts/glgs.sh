#!/bin/bash

set -e # If any commands in script fails the whole script will abort.

# awk is used here to print the entire line to stdout since
# git log outputs to Vim, which is it's default page.
git log --reverse --pretty=format:"%H - %an, %ar : %s" -5 |
awk '{ print }' |
while read log; do
  echo REV:
  echo $log
  echo $log |
  awk '{ print $1 }' |
  xargs git show --pretty="format:" --name-only
  echo
done
