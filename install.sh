#!/bin/bash

echo "--- Setting up Bash ---"
echo "Creating a symbolic link for .bashrc"
ln -Ffhs $HOME/.dot_files/bash/bashrc.bash $HOME/.bashrc
echo "Creating a symbolic link for .bash_profile"
ln -Ffhs $HOME/.dot_files/bash/bash_profile.bash $HOME/.bash_profile
echo

# echo "--- Setting up Tmux ---"
# echo "Creating a symbolic link for .tmux.conf"
# ln -Ffhs $HOME/.dot_files/tmux/tmux.conf $HOME/.tmux.conf
# echo

echo "--- Setting up Vim ---"
echo "Creating a symbolic link for .vimrc"
ln -Ffhs $HOME/.dot_files/vim/vimrc.vim $HOME/.vimrc
echo "Creating a symbolic link for .vimrc"
ln -Ffhs $HOME/.dot_files/vim/gvimrc.vim $HOME/.gvimrc
echo "Creating a symbolic link for .vim"
ln -Ffhs $HOME/.dot_files/vim/vim $HOME/.vim
echo

echo "--- setting up Vim plugins ---"
echo ""
cd $HOME/.dot_files/
echo "Downloading plugins"
git submodule init
mkdir -p vim/vim/bundle

cat vim/vim/plugins.md |
while read line;
  do dir_name=`echo $line | sed 's;git@github\.com:.*\/\(.*\)\.git;\1;'`;
  git submodule add $line vim/vim/bundle/$dir_name;
done

git submodule update
cd $HOME
echo

echo "--- setting up Git ---"
echo "Creating a symbolic link for .gitconfig"
ln -ffhs $HOME/.dot_files/git/gitconfig.git $HOME/.gitconfig
echo "Creating a symbolic link for .gitignore_global"
ln -ffhs $HOME/.dot_files/git/gitignore_global.git $HOME/.gitignore_global
echo

# echo "--- Creating and checking out local branch (development) ---"
# pushd $HOME/.dot_files
# git checkout master
# git checkout -b development -t master
# echo

echo "--- Done ---"
echo
