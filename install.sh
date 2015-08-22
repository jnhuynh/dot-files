#!/bin/bash

pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd`
popd > /dev/null

echo "--- Setting up ZSH ---"
echo "Creating a symbolic link for .zshrc"
ln -Ffhs $SCRIPTPATH/zshrc $HOME/.zshrc
echo "Creating a symbolic link for .oh-my-zsh-custom"
ln -Ffhs $SCRIPTPATH/oh-my-zsh-custom $HOME/.oh-my-zsh-custom
echo

echo "--- setting up Git ---"
echo "Creating a symbolic link for .gitconfig"
ln -ffhs $SCRIPTPATH/gitconfig $HOME/.gitconfig
echo "Creating a symbolic link for .gitignore_global"
ln -ffhs $SCRIPTPATH/gitignore_global $HOME/.gitignore_global
echo

echo "--- Setting up Vim ---"
echo "Creating a symbolic link for .vimrc"
ln -Ffhs $SCRIPTPATH/vimrc $HOME/.vimrc
echo "Creating a symbolic link for .vim"
ln -Ffhs $SCRIPTPATH/vim $HOME/.vim
echo

echo "--- setting up Vim plugins ---"
echo ""
cd $SCRIPTPATH
echo "Downloading VIM plugins"
mkdir -p vim/bundle

cd vim/bundle
cat ../plugins.md |
while read line;
  do git clone $line;
done
cd ../../

echo "--- Done ---"
echo
