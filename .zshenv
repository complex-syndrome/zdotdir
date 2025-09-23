#!/usr/bin/env zsh

# Some zsh docs
# https://github.com/mattmc3/zdotdir/tree/main/.docs

# NOTE: Symlink this file to ~/.zshenv, and do not remove the line below
export ZDOTDIR=$HOME/.config/zsh

# Some exports
export EDITOR=nvim
export ANTIDOTE_HOME=$ZDOTDIR/.antidote_repos
export ANTIDOTE_ZSH=/usr/share/zsh-antidote/antidote.zsh  # Change this to your antidote.zsh location

# # For OMZ themes (Activate / Uncomment it at .zsh_plugins.txt first)
# precmd() {  # Add a newline before between prompts
#   echo ""
# }
# export ZSH_THEME=agnoster

# export NVM_DIR=$ZDOTDIR/.nvm                      # For nvm plugin
# export GOPATH=$HOME/.config/go                    # For golang

# uv python, comment this out if not using
# https://docs.astral.sh/uv/getting-started/installation/#standalone-installer
# if [ -f "$HOME/.local/bin/env" ]; then
#   . "$HOME/.local/bin/env"
# fi

# rust, comment this out if not using
# curl https://sh.rustup.rs -sSf | sh
# if [ -f "$HOME/.cargo/env" ]; then
#   . "$HOME/.cargo/env"
# fi
