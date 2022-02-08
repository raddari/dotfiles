function fish_prompt
  set -g fish_prompt_pwd_dir_length 4
  if test -n "$SSH_TTY"
    echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)
  end

  echo -n (set_color blue)(prompt_pwd)

  set_color -o
  if fish_is_root_user
    echo -n (set_color red)'#'
  end
  echo "" # Newline baby
  echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
  set_color normal
end
