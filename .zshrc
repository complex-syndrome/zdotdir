# NOTE: Sources all NON-HIDDEN .sh | .zsh file 

# see /usr/share/doc/zsh/examples/zshrc for examples
# export ZDOTDIR=~/.config/zsh   NOTE: Just a reminder here to add this in .zshenv

use_new_zshrc=1

if [ $use_new_zshrc -eq 1 ]; then
  for file in $ZDOTDIR/*.(sh|zsh); do 
    . $file
    # echo "Sourced $file"
  done

else
  source $ZDOTDIR/original/.zshrc
  echo "Warning: Using original zshrc"
fi

unset use_new_zshrc

if [ -f /etc/wsl.conf ] && command -v nvm >/dev/null 2>&1; then
  echo "If using npm, run 'nvm use' first to inherit wsl's local ~/.nvmrc"
  echo "This message is sent from $ZDOTDIR/.zshrc, comment out this message if not using nvm in wsl"
fi
