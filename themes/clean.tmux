#!/usr/bin/env bash

base="#1C1E26"
c1="#1D1F27"
c2="#2E303E"
c3="#B877DB"
c4="#F09383"
c5="#EC6A88"

git_branch="#(git -C #{pane_current_path} branch --show-current || echo "--")"
git_status="#[bg=${c2},fg=${c5}]  $git_branch #[bg=${base}]"

set-option -g status-style "bg=${base}"
set-option -g status-left "#[bg=${c3},fg=${c1}]  #S #[bg=${base}] "
set-option -g status-right "$git_status #[bg=${c2},fg=${c3}]  #H #[bg=${base}] #[bg=${c2},fg=${c4}] %H:%M "
set-window-option -g window-status-current-format "#[bg=${c4},fg=${c1}] #I #W "
set-window-option -g window-status-format "#[bg=${c2},fg=${c4}] #I #W "
