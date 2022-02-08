#!/usr/bin/env fish
set -l c_reset "\033[0m"
set -l c_yellow "\033[1;33m"
set -l c_lgreen "\033[1;32m"

function group_data_link --description "group_data_link <group> <sources...>"
  set -l base_dir (dirname (readlink -m (status --current-filename)))
  set -l data_dir "$HOME/.config"
  set -l group "$argv[1]"

  mkdir -p "$data_dir/$group"
  for i in $argv[2..-1]
    mv -f "$data_dir/$group/$i" "$data_dir/$group/$i.orig"
    data_link "$base_dir/$group/$i" "$data_dir/$group/"

    if test -e "$data_dir/$group/$i/$i"
      # TODO(raddari): this seems to be duplicated for directories every install
      rm -f "$data_dir/$group/$i/$i"
    end
  end
end

function data_link --description "data_link <source> <link>"
  ln -s "$argv[1]" "$argv[2]"
end

printf "[%bSymlinking files and directories%b]\n" $c_yellow $c_reset
group_data_link "nvim" "init.lua" "lua"
group_data_link "fish" "config.fish" "functions" "user"

printf "[%bDone!%b]\n" $c_lgreen $c_reset
