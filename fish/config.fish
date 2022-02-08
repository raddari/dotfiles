if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx XDG_DATA_HOME "$HOME/.config"
set -gx fish_config_dir "$XDG_DATA_HOME/fish"

source "$fish_config_dir/user/aliases.fish"
source "$fish_config_dir/user/environment.fish"
