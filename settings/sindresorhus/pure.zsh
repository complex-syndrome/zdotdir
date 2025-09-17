#!/usr/bin/env zsh

# # https://github.com/mattmc3/zdotdir/blob/d6e3c224d864eb5e3d7c9185a30e117e3c1d31eb/conf.d/archive/pure.zsh
# # Pure prompt symbol
# PURE_PROMPT_SYMBOL="%%"
#
# # https://unix.stackexchange.com/questions/685666/zsh-how-do-i-remove-block-prefixes-when-writing-multi-line-statements-in-intera
# # use 2 space indent for each new level
# PS2='${${${(%):-%_}//[^ ]}// /  }    '
#
# # show exit code on right
# function precmd_pipestatus {
#   local exitcodes="${(j.|.)pipestatus}"
#   if [[ "$exitcodes" != "0" ]]; then
#     RPROMPT="%F{$prompt_pure_colors[prompt:error]}[$exitcodes]%f"
#   else
#     RPROMPT=
#   fi
# }
# add-zsh-hook precmd precmd_pipestatus

autoload -Uz promptinit && promptinit && prompt pure
