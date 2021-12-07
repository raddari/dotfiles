#!/bin/bash

base_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ln_args="-si"

if [ "$1" = "-y" ]; then
  ln_args="-sf"
fi

mkdir -p ~/.zsh/config
mkdir -p ~/.zsh/plugins
mkdir -p ~/.config/nvim/lua

echo "Installing submodules"
git submodule update --init --recursive

echo "Symlinking files and directories"
ln $ln_args ${base_dir}/nvim/init.lua ~/.config/nvim/init.lua
ln $ln_args ${base_dir}/nvim/lua/* ~/.config/nvim/lua/

ln $ln_args ${base_dir}/zsh/zshrc ~/.zshrc
ln $ln_args ${base_dir}/zsh/config/* ~/.zsh/config
ln $ln_args ${base_dir}/zsh/plugins/* ~/.zsh/plugins
