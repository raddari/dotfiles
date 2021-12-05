autoload colors && colors

NEWLINE=$'\n'

PROMPT=""
PROMPT="${PROMPT}%{$fg_bold[green]%}"  # set colour to bold green
PROMPT="${PROMPT}%n@wsl"               # user@wsl
PROMPT="${PROMPT}%{$fg_bold[blue]%}"   # set colour to bold blue
PROMPT="${PROMPT} %~"                  # print working directory
PROMPT="${PROMPT}%{$reset_color%}"     # reset colour
PROMPT="${PROMPT}${NEWLINE}"
PROMPT="${PROMPT}$ "                   # prompt
