#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.zsh
mkdir -p ~/.config/nvim/lua

echo "Installing submodules"
git submodule update --init --recursive

echo "Symlinking files and directories"
ln -si ${BASEDIR}/nvim/init.lua ~/.config/nvim/init.lua
ln -si ${BASEDIR}/nvim/lua/* ~/.config/nvim/lua/

ln -si ${BASEDIR}/zshrc ~/.zshrc
ln -si ${BASEDIR}/zsh/* ~/.zsh/

source ~/.zshrc
