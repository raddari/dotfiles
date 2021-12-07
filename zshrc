# Auto correct mistakes
setopt correct
# Sort filenames numerically
setopt numericglobsort
setopt nobeep
setopt autocd
setopt histignorespace
setopt append_history
setopt inc_append_history
setopt histignorealldups
setopt nocheckjobs
setopt nocaseglob
setopt extendedglob

export ZSH_CONFIG_DIR="$HOME/.zsh"
source "${ZSH_CONFIG_DIR}/completion.zsh"

autoload -U colors
colors

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000


source "${ZSH_CONFIG_DIR}/environment.zsh"
source "${ZSH_CONFIG_DIR}/aliases.zsh"
source "${ZSH_CONFIG_DIR}/plugins.zsh"
source "${ZSH_CONFIG_DIR}/keybinds.zsh"
source "${ZSH_CONFIG_DIR}/prompt.zsh"

eval "$(dircolors -b)"
