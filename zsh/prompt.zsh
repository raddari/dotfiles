source "${ZSH_CONFIG_DIR}/gitstatus/gitstatus.prompt.zsh"

newline=$'\n'
lineup=$'\e[1A'
linedown=$'\e[1B'

PROMPT=""
PROMPT="${PROMPT}%{$fg_bold[green]%}"  # set colour to bold green
PROMPT="${PROMPT}%n@%m"                # user@host
PROMPT="${PROMPT}%{$fg_bold[blue]%}"   # set colour to bold blue
PROMPT="${PROMPT} %~"                  # print working directory
PROMPT="${PROMPT}%{$reset_color%}"     # reset colour
PROMPT="${PROMPT}${newline}"
PROMPT="${PROMPT}$ "                   # prompt

RPROMPT="%{${lineup}%}$GITSTATUS_PROMPT%{${linedown}%}"
