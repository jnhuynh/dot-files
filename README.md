# Intro

These are '.' prefixed files that I use to configure my Bash shell, Vim, and
Git. The `install.sh` is a bash script that will create symbolic links to all my
configs at my `$HOME` directory.

# Required installed:

- iTerm *the configuration file is availible with this repo.*
- vim
- tmux
- git
- homebrew
- rvm
- bundler

# Usage

## Assumptions

The `install.sh` is very barebones and assumes you have the `$HOME` environment
variable set in your shell.

## Setup

To start, clone my repo to anywhere you want.

`$ git clone git@github.com:DIRhuynh/DotFiles.git`

Navigate into the DotFiles directory and execute the bash script:

`$ ./install.sh`

## Updating the Vim Plugins

The Vim plugin are Git submodules so you can update them by navigating to
DotFiles directory and executing the command:

`$ git submodule update`

# License
These files are made available under the [MIT License](http://opensource.org/licenses/MIT).
