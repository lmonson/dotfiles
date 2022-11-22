_find_all_cheats() {
  unset PATH_CHEATS
  dir=$(pwd -P)
  while [ -n "$dir" ]; do
    if [ -d "$dir/.cheats" ]; then
      if [ -z "$PATH_CHEATS" ]; then
        PATH_CHEATS="$dir/.cheats"
      else
        PATH_CHEATS="$PATH_CHEATS:$dir/.cheats"
      fi
    fi
    dir=${dir%/*}
  done
  PATH_CHEATS="$PATH_CHEATS:$HOME/.navi"
  if [ -z "$PATH_CHEATS" ]; then
    printf ''
  else
    printf '%s:' "$PATH_CHEATS"
  fi
}


_call_navi() {
  local selected
  RELATIVE_CHEATS=$(_find_all_cheats)
  CUSTOM_PATH="$RELATIVE_CHEATS$(navi info cheats-path)"
  if [ -n "$LBUFFER" ]; then

    if selected="$(printf "%s" "$(navi --path "$CUSTOM_PATH" --print --fzf-overrides '--no-select-1' --query "${LBUFFER}" </dev/tty)")"; then
      LBUFFER="$selected"
    fi
  else
    if selected="$(printf "%s" "$(navi --path "$CUSTOM_PATH" --print </dev/tty)")"; then
      LBUFFER="$selected"
    fi
  fi
  zle redisplay
}

zle -N _call_navi

bindkey '^g' _call_navi