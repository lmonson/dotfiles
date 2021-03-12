_call_navi() {
  local selected
  CUSTOM_PATH="./.cheats:$(navi info cheats-path)"
  echo $CUSTOM_PATH
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