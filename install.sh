#!/bin/bash

echo "--- Setting up Bash ---"
echo "Creating a symbolic link for .bash_profile"
ln -Ffhs $HOME/.DotFiles/Bash/bash_profile.bash $HOME/.bash_profile
echo

echo "--- Setting up Tmux ---"
echo "Creating a symbolic link for .tmux.conf"
ln -Ffhs $HOME/.DotFiles/Tmux/tmux.conf $HOME/.tmux.conf
echo

echo "--- Setting up Vim ---"
echo "Creating a symbolic link for .vimrc"
ln -Ffhs $HOME/.DotFiles/Vim/vimrc.vim $HOME/.vimrc
echo "Creating a symbolic link for .vimrc"
ln -Ffhs $HOME/.DotFiles/Vim/gvimrc.vim $HOME/.gvimrc
echo "Creating a symbolic link for .vim"
ln -Ffhs $HOME/.DotFiles/Vim/vim $HOME/.vim
echo

echo "--- setting up Vim plugins ---"
echo ""
cd $HOME/.DotFiles/
echo "Downloading plugins"
git submodule init
git submodule update
cd $HOME
echo

echo "--- setting up Git ---"
echo "Creating a symbolic link for .gitconfig"
ln -ffhs $HOME/.DotFiles/git/gitconfig.git $HOME/.gitconfig
echo "Creating a symbolic link for .gitignore_global"
ln -ffhs $HOME/.DotFiles/git/gitignore_global.git $HOME/.gitignore_global
echo

# echo "--- Creating and checking out local branch (development) ---"
# pushd $HOME/.Dotfiles
# git checkout master
# git checkout -b development -t master
# echo

echo "--- Done ---"
echo
