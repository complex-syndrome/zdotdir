#!/usr/bin/env zsh

# NOTE: Inherited from kali default prompt settings (updated and documented)
# Just a tutorial for creating custom prompt styles (or if you want to use it)
# Not used (Name starts with '.', is hidden) and can be removed safely

# Prompt format
# %n                    => Username
# %m                    => Hostname
# %~                    => Current PWD
# %?                    => Last exit code
# \e]0;                 => Escape sequence to write title
# \a                    => Terminates writing to title
# %5~                   => Show last 5 components of path
# %(6~.%-1~/…/%4~.%5~)  => Smart truncation for long paths
# %F{color}             => Set foreground color
# %F{reset}             => Reset color
# %B %b                 => Bold on/off
# %(#.red.blue)         => Red if root, blue otherwise
# %(?.. )               => Exit code not zero (conditional)
# %(1j. [TRUE].[FALSE]) => >=1 background jobs exist (conditional)


if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

precmd() { # Runs everytime before a prompt appear
  print "" # Prompt \n spacing

  # Change terminal title dynamically
  if [ -n "$PS1" ] && [ -t 1 ]; then      # Is interactive shell && Is stdout connected to terminal
    print '\e]0;test\a'>/dev/null 2>&1
    if [ $? -eq 0 ]; then                 # Test if print returns error code 0 (Success)
      print -Pnr -- $'\e]0;${debian_chroot:+($debian_chroot)}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))} %n@%m: %~\a'
    fi
  fi
}

# Delimiters, do not modify.
# START KALI CONFIG VARIABLES
PROMPT_ALTERNATIVE=twoline
# STOP KALI CONFIG VARIABLES

configure_prompt() {
  case "$PROMPT_ALTERNATIVE" in
    twoline)
      PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)─}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))─}(%B%F{%(#.red.blue)}%n'㉿$'%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
      ;;
    oneline)
      PROMPT=$'${debian_chroot:+($debian_chroot)}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}%B%F{%(#.red.blue)}%n@%m%b%F{reset}:%B%F{%(#.blue.green)}%~%b%F{reset}%(#.#.$) '
      ;;
  esac
  RPROMPT=$'%(?.. %? %F{red}%B⨯%b%F{reset})%(1j. %j %F{yellow}%B⚙%b%F{reset}.)'
}

# We have color support; assume it's compliant with Ecma-48 (ISO/IEC-6429).
# Lack of such support is extremely rare, and such a case would tend to support setf rather than setaf.
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    VIRTUAL_ENV_DISABLE_PROMPT=1  # override default virtualenv indicator in prompt
    configure_prompt
else
    PROMPT='${debian_chroot:+($debian_chroot)}%n@%m:%~%(#.#.$) '
fi

toggle_oneline_prompt(){
    if [ "$PROMPT_ALTERNATIVE" = oneline ]; then
        PROMPT_ALTERNATIVE=twoline
    else
        PROMPT_ALTERNATIVE=oneline
    fi
    configure_prompt
    zle reset-prompt
}

zle -N toggle_oneline_prompt
bindkey ^P toggle_oneline_prompt
