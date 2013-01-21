#!/bin/bash

set -e # If any commands in script fails the whole script will abort.

echo

# awk is used here to print the entire line to stdout since
# git log outputs to Vim, which is it's default page.
git log --reverse --pretty=format:"%an, %ar : %s%n%H" -5 $1 |
awk '{ print }' |
while read log; do
  echo REV:
  echo $log # First line is the commit message and info.
  read log # Second line is the commit hash.
  echo $log
  echo $log |
  awk '{ print $1 }' |
  xargs git show --pretty="format:" --name-only
  echo
  echo -------------------------------------------------
  echo
done
