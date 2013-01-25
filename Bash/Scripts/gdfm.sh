#!/bin/bash

git status              |
grep modified:          |
awk '{print $3}'        |
xargs git difftool head
