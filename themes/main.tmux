#!/usr/bin/env bash

THEME_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_LAYOUT="clean"
DEFAULT_COLORS="horizon"

get_opt() {
  local option="$1"
  local default="$2"
  local option_set
  option_set=$(tmux show-option -gqv "$option")
  if [ -z "$option_set" ]; then
    echo "$default"
  else
    echo "$option_set"
  fi
}

main() {
  local layout colors
  layout=$(get_opt "@theme_layout" "${DEFAULT_LAYOUT}")
  colors=$(get_opt "@theme_colors" "${DEFAULT_COLORS}")

  # Get colors
  # https://github.com/dylanaraps/pure-sh-bible#parsing-a-keyval-file
  while IFS='=' read -r key val; do
    [ "${key##\#*}" ] || continue
    eval "local $key"="$val"
  done <"${THEME_DIR}/colors/${colors}.theme"

  # Load theme
  source "${THEME_DIR}/layouts/${layout}.tmux"
}

main
