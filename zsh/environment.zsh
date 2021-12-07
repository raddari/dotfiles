export GPG_TTY=$(tty)
export XDG_DATA_HOME="$HOME/.config"

export CC='/usr/bin/clang-12'
export CXX='/usr/bin/clang++-12'

export EDITOR='nvim'
export VISUAL='nvim'

# Colour man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-R
