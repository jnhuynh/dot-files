# Intro

These are '.' prefixed files that I use to configure my ZSH, Vim, and
Git. The `install.sh` is a bash script that will create symbolic links to all my
configs at my `$HOME` directory.

# Required installed:

- iTerm
- Oh-My-ZSH
- vim
- vim-pathogen
- git

# Usage

## Assumptions

The `install.sh` is very barebones and assumes you have the `$HOME` environment
variable set in your shell.

## Setup

To start, clone my repo to anywhere you want.

`$ git clone git@github.com:jnhuynh/dot_files.git`

Navigate into the `dot_files` directory and execute the bash script:

`$ ./install.sh`

## Updating the Vim Plugins

The install script will install all plugins in the `vim/plugins.md` file.  To
add a new vim plugin, just add the git repository into the `vim/plugins.md`
file.

All of the plugins are installed into the `vim/bundle` directory.

# License
These files are made available under the [MIT License](http://opensource.org/licenses/MIT).
