#!/usr/bin/env fish

function link_module
  set -l source_dir "$dotfiles_dir/$argv[1]"
  ln -svi $source_dir/* "$XDG_CONFIG_HOME/$argv[1]"
end

set dotfiles_dir (dirname (readlink -m (status --current-filename)))
source "$dotfiles_dir/fish/conf.d/000-env.fish"

set -l modules "fish" "nvim" "tmux"
for module in $modules
  link_module "$module"
end
