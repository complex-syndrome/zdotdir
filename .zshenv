#!/usr/bin/env zsh

# NOTE: Symlinked to ~, do not touch

export ZDOTDIR=$HOME/.config/zsh

# uv python, comment this out if not using uv
# https://docs.astral.sh/uv/getting-started/installation/#standalone-installer
if [ -f "$HOME/.local/bin/env" ]; then
  . "$HOME/.local/bin/env"
fi

# Some zsh docs
# https://github.com/mattmc3/zdotdir/tree/main/.docs
