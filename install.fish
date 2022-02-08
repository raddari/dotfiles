#!/usr/bin/env fish
function group_data_link --description "group_data_link <group> <sources...>"
  set -l base_dir (dirname (readlink -m (status --current-filename)))
  set -l data_dir "$HOME/.config"
  set -l group "$argv[1]"

  mkdir -p "$data_dir/$group"
  for i in $argv[2..-1]
    mv -f "$data_dir/$group/$i" "$data_dir/$group/$i.orig"
    data_link "$base_dir/$group/$i" "$data_dir/$group/"
  end
end

function data_link --description "data_link <source> <link>"
  ln -s "$argv[1]" "$argv[2]"
end

echo "Symlinking files and directories"
group_data_link "nvim" "init.lua" "lua"
group_data_link "fish" "config.fish" "functions" "user"

echo "Done!"