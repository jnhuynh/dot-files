# Intro

These are '.' prefixed files that I use to configure my ZSH, Vim, and Git. The
`install.sh` is a bash script that will create symbolic links to all my configs
at my `$HOME` directory.

# Required installed:

- [iTerm](https://www.iterm2.com/)

# Usage

## Setup

To start, clone my repo to anywhere you want.

`$ git clone git@github.com:jnhuynh/dot_files.git`

Navigate into the `dot_files` directory and execute the bash script:

`$ ./install.sh`

## Updating the Vim and oh-my-zsh Plugins

The install script will install all plugins in the `vim/plugins.md` and
`oh-my-zsh-custom/plugins.md` files for their respective tools. To add a new
plugin, just add the git repository into appropriate file.

All of the plugins are installed into the `vim/bundle` and `oh-my-zsh-custom/plugins` directories.

# License
These files are made available under the [MIT License](http://opensource.org/licenses/MIT).
