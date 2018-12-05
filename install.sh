#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git submodule update --init --recursive

echo "Back up your dotfiles if you want to keep them."
echo "This script will overwrite them"
echo ""
while true; do
  read -p "Do you want to continue [yn]? " yn
  case $yn in 
    [Yy]* )
      for DOT_FILE in `ls $PWD/dotfiles`
      do
        mv $HOME/.$DOT_FILE $PWD/backup
        ln -sFf $PWD/dotfiles/$DOT_FILE $HOME/.$DOT_FILE
      done
      LINE='. ~/.bash_alias'
      FILE=$HOME/.bashrc
      grep -qF "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
      ln -sFf $PWD/bin $HOME/bin
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
      mv $HOME/.macos $HOME/.mac_alias $PWD/backup
      ln -sFf $PWD/macfiles/macos $HOME/.macos
      ln -sFf $PWD/macfiles/mac_alias $HOME/.mac_alias
      LINE='. ~/.bashrc'
      FILE=$HOME/.bash_profile
      grep -qF "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
      LINE='. ~/.mac_alias'
      FILE=$HOME/.bash_profile
      grep -qF "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
      echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile
      break;;
    [Nn]* )
      exit;;
    * ) echo "Please answer yes or no.";
      ;;
  esac
done


# OS Specific Install

#OS="(uname -s)"
#if test "$OS" = "Darwin"; then
#  
#else if test "$OS" = "Linux"; then
#
#fi

