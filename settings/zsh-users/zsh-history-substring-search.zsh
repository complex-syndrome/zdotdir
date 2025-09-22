#!/usr/bin/env zsh

# https://github.com/getantidote/zdotdir/blob/main/.zshrc.d/history-substring-search.zsh
[[ -v terminfo ]] || zmodload zsh/terminfo

if [[ -n "$terminfo[kcuu1]" ]]; then # UP key
  bindkey -M emacs "$terminfo[kcuu1]" history-substring-search-up
  bindkey -M viins "$terminfo[kcuu1]" history-substring-search-up
fi
if [[ -n "$terminfo[kcud1]" ]]; then # DOWN key
  bindkey -M emacs "$terminfo[kcud1]" history-substring-search-down
  bindkey -M viins "$terminfo[kcud1]" history-substring-search-down
fi
