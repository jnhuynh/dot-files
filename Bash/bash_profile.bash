#!/bin/bash

# File : .bash_profile
# Description : Configures interactive non-login bash shells.

# Configure environment:
. ~/.DotFiles/Bash/environment.bash

# Configure aliases:
. ~/.DotFiles/Bash/aliases.bash

# Add utility functions
. ~/.DotFiles/Bash/utils.bash


# Check if the rvm initialization script exists and sources it to set necessary 
# environment variables.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

rvm use

# Prevents redirected files from overwriting the predecessor
set -o noclobber

# Prevents message spam
mesg n

# http://jondavidjohn.com/blog/2012/12/how-to-accomplish-a-responsive-bash-prompt
parse_git_branch() {
    if [ -d ".git" ]; then
        branch=`git branch | grep -e ^* | awk '{ print $2 }'`
    fi

    if [[ $branch != "" ]]; then
        echo " ($branch)"
    fi
}

prompt() {
    prompt="${VIOLET}\h${NORMAL} |  \w${GREEN}$(parse_git_branch)${NORMAL}\n$ "
    PS1=$prompt
}

PROMPT_COMMAND=prompt
