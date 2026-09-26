#!/usr/bin/env sh

alias la='ls -al'
alias cls=clear
alias history="history 0"
alias fd='find . -type d -name'
alias ff='find . -type f -name'
alias update='pkg update && pkg upgrade -y'

alias zshconfig="pushd $ZDOTDIR &>/dev/null && $EDITOR . && popd &>/dev/null"
alias aliasconfig="pushd $ZDOTDIR &>/dev/null && $EDITOR aliases.sh && popd &>/dev/null"
alias nvimconfig="pushd ~/.config/nvim &>/dev/null && $EDITOR . && popd &>/dev/null"

alias nv=nvim
alias py=python3

alias antidote_refresh="$ZDOTDIR/scripts/refresh_antidote_repos.zsh"

alias gitnewrepo="git init && git branch -M main && git remote add origin $1"
alias giturls="git remote -v"
alias ga="git add ."
alias gcm="git commit -m"

alias venv="source ~/.venv/bin/activate"
alias wttr="curl wttr.in"

alias ls="eza --icons --git"
alias lt="ls -T"

alias lg="lazygit"
