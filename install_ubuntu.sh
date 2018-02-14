#!/bin/bash
#
# Install personal linux environment
#
#

###
# Top Level variables
###

# -u will exit script if attempting to use an unitialized variable.
# -e tills bash that it should exit the script if any statement returns a
#    non-zero return value
# -o pipefail means return value of pipe is failure code not last
set -euo pipefail

###
# Trapping
###

# INT  - Interrupt, sent when someone kills with ctrl-c
# TERM - Terminate, sent when someone uses the kill command
# EXIT - Exit, triggered when exiting through end of script, exit command,
#        or fail by set -e


SCRIPTNAME="$(basename $0)"
INSTALL_CMD="sudo apt install -y"

trap 'echo exiting, error @$LINENO && exit $?' ERR

sudo apt update && sudo apt upgrade

sudo add-apt-repository ppa:graphics-drivers
sudo apt update
sudo apt search nvidia-
echo "which nvidia driver do you want to install?"
read version_num
$INSTALL_CMD nvidia-$version_num






$INSTALL_CMD build-essential
$INSTALL_CMD cmake
$INSTALL_CMD ctags
$INSTALL_CMD g++
$INSTALL_CMD git
$INSTALL_CMD libboost-all-dev
$INSTALL_CMD linux-headers-generic
$INSTALL_CMD lm-sensors
$INSTALL_CMD psensor
$INSTALL_CMD tmux
$INSTALL_CMD xclip
$INSTALL_CMD xsel # Realistically don't need both of these...

#python
$INSTALL_CMD python-setuptools
$INSTALL_CMD python-dev
$INSTALL_CMD python-pip

#widgets
$INSTALL_CMD indicator-multiload

#nvidia
$INSTALL_CMD nvidia-modprobe

#vim
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
$INSTALL_CMD vim

#latex
sudo apt install texlive-latex-extra

sudo apt -y autoremove
