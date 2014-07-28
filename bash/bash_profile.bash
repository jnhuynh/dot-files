#!/bin/bash

# File : .bash_profile
# Description : Configures interactive non-login bash shells.

# Configure environment:
. ~/.dot_files/bash/environment.bash

# Configure aliases:
. ~/.dot_files/bash/aliases.bash

# Add utility functions
. ~/.dot_files/bash/utils.bash

# Git completion
# http://code-worrier.com/blog/autocomplete-git/
. ~/.dot_files/bash/scripts/git_completion.bash

# Numbify lines of single "words", used for quick text expansion.
. ~/.dot_files/bash/scripts/numbify.sh

# Load NVM before RVM because RVM has annoying warnings
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

# Check if the rvm initialization script exists and sources it to set necessary 
# environment variables.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Prevents redirected files from overwriting the predecessor
set -o noclobber

# Vim CLI interactions. :D
# set -o vi
set show-all-if-ambiguous on
set completion-ignore-case o
# set editing-mode vi

# Prevents message spam
mesg n

# https://coderwall.com/p/oqtj8w
bind '"\e[A": history-search-backward' #up-arrow through history
bind '"\e[B": history-search-forward' #down-arrow through history

PROMPT_COMMAND=prompt

# Add work related utils, not available in repo.
. ~/.profile
