#!/usr/bin/env sh

export EDITOR=nvim

alias la='ls -al'
alias cls=clear
alias history="history 0"
alias fd='find . -type d -name'
alias ff='find . -type f -name'
alias update='sudo apt update && sudo apt upgrade -y'

alias zshconfig="$EDITOR $ZDOTDIR"
alias nvimconfig="$EDITOR ~/.config/nvim"

alias nv=nvim
alias py=python3

alias antidote_refresh="$ZDOTDIR/scripts/refresh_antidote_repos.zsh"

alias gitnewrepo="git init && git branch -M main && git remote add origin $1"
alias giturls="git remote -v"
alias ga="git add ."
alias gcm="git commit -m"
