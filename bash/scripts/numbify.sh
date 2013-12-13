#!/bin/bash

# Numbify functions should be used as part of aliases. It's purpose is to
# expose a numbered list of values that can be used for other commands. For
# example, git log's hash values can be used git cherry-pick or git rebase or
# git status for git add.
# lg   = "!function f { source ${HOME}/.bash_profile; git log --pretty=format:\"%Cred%h%Creset - %an, %ar : %Cgreen%s\" --abbrev-commit | awk '{ print $1 }' | numbify; }; f; git status -sb"
# st   = "!function f { source ${HOME}/.bash_profile; git status -sb | awk '{ print $2 }' | numbify; }; f; git status -sb"
# sh   = show --word-diff=color

# Expects a pipe of lines containing one word. Creates a numbered list that can
# be used for quick text expansion. Each call to numbify will wipe out the
# prior list.
#
# Example:
#
# $ git status -st | awk '{ print $2 }' | numbify
# => 1 master
#    2 some_file
#    3 another_file
#      ...
#    n nth_file
nfy () {
  tmp_file="${HOME}/.numbify.tmp"
  counter=1; # Start at one to sed's line counter.

  # Remove old temp file.
  rm -f $tmp_file
  # Create a new empty one.
  > $tmp_file

  while read line;
    do if [ -n "$line" ] ; then
      # Append to temp file for future reference.
      echo "$counter $line" >> $tmp_file;
      echo "$counter $line"

      counter=$((counter + 1));
    fi;
  done
}

# Prints out the nth word from the last call to numbify.
# This function EXPECTS a number as an argument.
#
# Example:
#
# $ git add $(select_numbify 3)
# => 1 master
#    2 some_file
#    3 another_file
#      ...
#    n nth_file
snfy () {
  if [ -n "$1" ] ; then
    tmp_file="${HOME}/.numbify.tmp";
    cat $tmp_file | sed -n "$1p" | awk '{ print $2 }';
  fi;
}
