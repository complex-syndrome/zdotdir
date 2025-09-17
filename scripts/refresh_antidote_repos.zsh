#!/usr/bin/env zsh

rm -rf $ANTIDOTE_HOME
rm $ZDOTDIR/.zsh_plugins.zsh
. /usr/share/zsh-antidote/antidote.zsh
antidote load
