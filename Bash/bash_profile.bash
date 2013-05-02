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

if [[ "$HOST" == "dhcp-"*"rbm.local" ]]; then
  rvm use ree@rbm-rvm-development
else
  rvm use ruby
fi

# Prevents redirected files from overwriting the predecessor
set -o noclobber

# Prevents message spam
mesg n

# http://jondavidjohn.com/blog/2012/12/how-to-accomplish-a-responsive-bash-prompt
parse_git_branch() {
    # http://stackoverflow.com/a/617184 <= Silent commands.
    if git rev-parse > /dev/null 2>/dev/null; then
        branch=`git branch | grep -e ^* | awk '{ print $2 }'`
    fi

    if [[ $branch != "" ]]; then
        echo " ($branch)"
    fi
}

prompt() {
    prompt="${BLUE}\h${NORMAL} |  \w${YELLOW}$(parse_git_branch)${NORMAL}\n$ "
    PS1=$prompt
}

# https://coderwall.com/p/oqtj8w
bind '"\e[A": history-search-backward' #up-arrow through history
bind '"\e[B": history-search-forward' #down-arrow through history
set show-all-if-ambiguous on
set completion-ignore-case o

PROMPT_COMMAND=prompt
