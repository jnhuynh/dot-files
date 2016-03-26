#!/bin/bash

pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd`
popd > /dev/null

echo
echo "--- Installing Homebrew ---"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo
echo "--- Installing ZSH ---"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo
echo "--- Setting up ZSH ---"
echo "Creating a symbolic link for .zshrc"
ln -Ffhs $SCRIPTPATH/zshrc $HOME/.zshrc
echo "Creating a symbolic link for .oh-my-zsh-custom"
ln -Ffhs $SCRIPTPATH/oh-my-zsh-custom $HOME/.oh-my-zsh-custom

echo
echo "--- Setting up ZSH plugins ---"
echo "Downloading ZSH plugins"
mkdir -p oh-my-zsh-custom/plugins

cd oh-my-zsh-custom/plugins
cat ../plugins.md |
while read line;
  do git clone $line;
done
cd ../../

echo
echo "--- Setting up Powerline fonts ---"
git clone git@github.com:powerline/fonts.git
pushd fonts > /dev/null
./install.sh
popd > /dev/null
rm -rf fonts

echo
echo "--- Installing Git ---"
brew install git

echo
echo "--- Setting up Git ---"
echo "Creating a symbolic link for .gitconfig"
ln -ffhs $SCRIPTPATH/gitconfig $HOME/.gitconfig
echo "Creating a symbolic link for .gitignore_global"
ln -ffhs $SCRIPTPATH/gitignore_global $HOME/.gitignore_global

echo
echo "--- Installing Hub ---"
brew install hub

echo
echo "--- Installing Vim ---"
brew install vim

echo
echo "--- Setting up Vim ---"
echo "Creating a symbolic link for .vimrc"
ln -Ffhs $SCRIPTPATH/vimrc $HOME/.vimrc
echo "Creating a symbolic link for .gvimrc"
ln -Ffhs $SCRIPTPATH/gvimrc $HOME/.gvimrc
echo "Creating a symbolic link for .vim"
ln -Ffhs $SCRIPTPATH/vim $HOME/.vim

echo
echo "--- Setting up Vim plugins ---"
echo "Downloading VIM plugins"
mkdir -p vim/bundle

cd vim/bundle
cat ../plugins.md |
while read line;
  do git clone $line;
done
cd ../../

echo
echo "--- Installing Tmux ---"
brew install tmux

echo
echo "--- Setting up Tmux ---"
echo "Creating a symbolic link for .tmux.conf"
ln -Ffhs $SCRIPTPATH/tmux.conf $HOME/.tmux.conf

echo
echo "--- Installing Ack ---"
brew install ack

echo
echo "--- Done ---"
echo
