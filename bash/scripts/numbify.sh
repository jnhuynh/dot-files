#!/bin/bash

# Expects a pipe of lines containing one word. Creates a numbered list that can
# be used for quick text expansion. Each call to numbify will wipe out the
# prior list.
#
# Example:
#
# $ git status -st | awk '{ print $2 }'
# => 1 master
#    2 some_file
#    3 another_file
#      ...
#    n nth_file
numbify () {
  tmp_file="${HOME}/.numbify.tmp"
  counter=1;

  # Remove old temp file.
  rm -f $tmp_file
  # Create a new empty one.
  echo -n "" > $tmp_file

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
# $ git status -st | awk '{ print $2 }'
# => 1 master
#    2 some_file
#    3 another_file
#      ...
#    n nth_file
select_numbify () {
  if [ -n "$1" ] ; then
    tmp_file="${HOME}/.numbify.tmp";
    cat $tmp_file | sed -n "$1p" | awk '{ print $2 }';
  fi;
}
