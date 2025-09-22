#!/usr/bin/env zsh

rm -rf ${ANTIDOTE_HOME:-$HOME}
rm $ZDOTDIR/.zsh_plugins.zsh
. $ANTIDOTE_ZSH
antidote load
