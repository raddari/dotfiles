#!/usr/bin/env fish

function link_module
  set -f module "$argv[1]"
  set -f source_dir "$argv[2]"
  set -f dest_dir "$XDG_CONFIG_HOME/$module"
  mkdir -p "$dest_dir"
  ln -svi $source_dir/* $dest_dir
end

set dotfiles_dir (dirname (readlink -m (status --current-filename)))
source "$dotfiles_dir/config/fish/conf.d/000-env.fish"

set -l modules "fish" "nvim" "tmux" "clangd"
for module in $modules
  # TODO(raddari): split into own install files
  link_module "$module" "$dotfiles_dir/config/$module"
end
