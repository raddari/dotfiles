# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

export ZSH_CONFIG_DIR="$HOME/.zsh"
export XDG_DATA_HOME="$HOME/.config"
export CC="/usr/bin/clang-12"
export CXX="/usr/bin/clang++-12"

source ${ZSH_CONFIG_DIR}/aliases.zsh
source ${ZSH_CONFIG_DIR}/prompt.zsh
source ${ZSH_CONFIG_DIR}/plugins.zsh
