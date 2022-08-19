set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

set -gx GPG_TTY (tty)

set -gx CC "clang"
set -gx CXX "clang++"
set -gx LD "lld"

set -gx EDITOR "nvim"
set -gx VISUAL "nvim"

set -gx PAGER "nvim +Man!"
