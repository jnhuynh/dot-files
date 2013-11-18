#!/bin/bash

set -e

echo

git stash list |
awk '{ print $1 }' |
sed 's/://' |
while read stash; do
  echo $stash
  git stash show $stash
  echo
  echo -------------------------------------------------
  echo
done
