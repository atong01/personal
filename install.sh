#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git submodule init
git submodule update

echo "Back up your dotfiles if you want to keep them."
echo "This script will overwrite them"
echo ""
while true; do
  read -p "Do you want to continue [yn]? " yn
  case $yn in 
    [Yy]* )
      ln -sFf $PWD/vim $HOME/.vim
      ln -sFf $PWD/dotfiles/vimrc $HOME/.vimrc
      ln -sFf $PWD/dotfiles/gitconfig $HOME/.gitconfig
      ln -sFf $PWD/dotfiles/bash_alias $HOME/.bash_alias
      LINE='. ~/.bash_alias'
      FILE=$HOME/.bashrc
      grep -qF "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
      break;;
    [Nn]* )
      exit;;
    * ) echo "Please answer yes or no.";
      ;;
  esac
done
echo "Is this a mac? Should I source .bashrc in .bash_profile?"
echo
while true; do
  read -p "Do you want to continue [yn]? " yn
  case $yn in 
    [Yy]* )
      LINE='. ~/.bashrc'
      FILE=$HOME/.bash_profile
      grep -qF "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
      break;;
    [Nn]* )
      exit;;
    * ) echo "Please answer yes or no.";
      ;;
  esac
done
