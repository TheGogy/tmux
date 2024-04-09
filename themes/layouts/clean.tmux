#!/usr/bin/env bash


main() {
  git_branch="#(git -C #{pane_current_path} branch --show-current || echo "--")"

  tmux set-option -g status-style "bg=${base}"
  tmux set-option -g status-left "#[bg=${c3},fg=${c1}]  #S #[bg=${base}] "
  tmux set-option -g status-right "#[bg=${c2},fg=${c5}]  $git_branch #[bg=${base}] #[bg=${c2},fg=${c3}]  #H #[bg=${base}] #[bg=${c2},fg=${c4}] %H:%M "
  tmux set-window-option -g window-status-current-format "#[bg=${c4},fg=${c1}] #I #W "
  tmux set-window-option -g window-status-format "#[bg=${c2},fg=${c4}] #I #W "
}

main
