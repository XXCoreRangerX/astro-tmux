#!/usr/bin/env bash
# Copyright (C) 2021 XXCoreRangerX <mail@xxcore.pl>

# Project:    Astro tmux
# Repository: https://github.com/xxcorerangerx/astro-tmux
# License:    MIT
# References:
#   https://tmux.github.io

ASTRO_TMUX_COLOR_THEME_FILE=src/astro.conf
ASTRO_TMUX_VERSION=1.1.1
ASTRO_TMUX_STATUS_CONTENT_FILE="src/astro-status-content.conf"
ASTRO_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE="src/astro-status-content-no-patched-font.conf"
ASTRO_TMUX_STATUS_CONTENT_OPTION="@astro_tmux_show_status_content"
ASTRO_TMUX_NO_PATCHED_FONT_OPTION="@astro_tmux_no_patched_font"
_current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

__cleanup() {
  unset -v ASTRO_TMUX_COLOR_THEME_FILE ASTRO_TMUX_VERSION
  unset -v ASTRO_TMUX_STATUS_CONTENT_FILE ASTRO_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE
  unset -v ASTRO_TMUX_STATUS_CONTENT_OPTION ASTRO_TMUX_NO_PATCHED_FONT_OPTION
  unset -v _current_dir
  unset -f __load __cleanup
  tmux set-environment -gu ASTRO_TMUX_STATUS_TIME_FORMAT
}

__load() {
  tmux source-file "$_current_dir/$ASTRO_TMUX_COLOR_THEME_FILE"

  local status_content=$(tmux show-option -gqv "$ASTRO_TMUX_STATUS_CONTENT_OPTION")
  local no_patched_font=$(tmux show-option -gqv "$ASTRO_TMUX_NO_PATCHED_FONT_OPTION")

  if [ "$(tmux show-option -gqv "clock-mode-style")" == '12' ]; then
    tmux set-environment -g ASTRO_TMUX_STATUS_TIME_FORMAT "%I:%M %p"
  else
    tmux set-environment -g ASTRO_TMUX_STATUS_TIME_FORMAT "%H:%M"
  fi

  if [ "$status_content" != "0" ]; then
    if [ "$no_patched_font" != "1" ]; then
      tmux source-file "$_current_dir/$ASTRO_TMUX_STATUS_CONTENT_FILE"
    else
      tmux source-file "$_current_dir/$ASTRO_TMUX_STATUS_CONTENT_NO_PATCHED_FONT_FILE"
    fi
  fi
}

__load
__cleanup
