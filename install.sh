#!/bin/bash
echo "--- Setting up Bash ---"
echo "Creating a symbolic link for .bash_profile"
ln -Ffhs $HOME/.DotFiles/Bash/bash_profile.bash $HOME/.bash_profile
echo

echo "--- Setting up Vim ---"
echo "Creating a symbolic link for .vimrc"
ln -Ffhs $HOME/.DotFiles/Vim/vimrc.vim $HOME/.vimrc
echo "Creating a symbolic link for .vimrc"
ln -Ffhs $HOME/.DotFiles/Vim/gvimrc.vim $HOME/.gvimrc
echo "Creating a symbolic link for .vim"
ln -Ffhs $HOME/.DotFiles/Vim/vim $HOME/.vim
echo

echo "--- Setting up Git ---"
echo "Creating a symbolic link for .gitconfig"
ln -Ffhs $HOME/.DotFiles/Git/gitconfig.git $HOME/.gitconfig
echo "Creating a symbolic link for .gitignore_global"
ln -Ffhs $HOME/.DotFiles/Git/gitignore_global.git $HOME/.gitignore_global
echo

echo "--- Creating and checking out local branch (development) ---"
pushd $HOME/.Dotfiles
git checkout master
git branch development
git checkout development
echo

echo "--- Done ---"
echo
