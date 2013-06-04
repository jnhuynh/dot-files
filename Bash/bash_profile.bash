#!/bin/bash

# File : .bash_profile
# Description : Configures interactive non-login bash shells.

# Configure environment:
. ~/.DotFiles/Bash/environment.bash

# Configure aliases:
. ~/.DotFiles/Bash/aliases.bash

# Add utility functions
. ~/.DotFiles/Bash/utils.bash

# Git completion
# http://code-worrier.com/blog/autocomplete-git/
. ~/.DotFiles/Bash/Scripts/git_completion.bash

# Add work related utils, not available in repo.
. ~/.profile

# Check if the rvm initialization script exists and sources it to set necessary 
# environment variables.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Prevents redirected files from overwriting the predecessor
set -o noclobber

# Prevents message spam
mesg n

# https://coderwall.com/p/oqtj8w
bind '"\e[A": history-search-backward' #up-arrow through history
bind '"\e[B": history-search-forward' #down-arrow through history
set show-all-if-ambiguous on
set completion-ignore-case o

PROMPT_COMMAND=prompt
