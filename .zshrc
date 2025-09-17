# NOTE: Sources all NON-HIDDEN .sh | .zsh file 

# see /usr/share/doc/zsh/examples/zshrc for examples
# export ZDOTDIR=~/.config/zsh   NOTE: Just a reminder here to add this in .zshenv instead

use_new_zshrc=1

if [ $use_new_zshrc -eq 1 ]; then
  for file in $ZDOTDIR/*.(sh|zsh); do 
    . $file
    # echo "Sourced $file"
  done

else
  source $ZDOTDIR/original/.zshrc.original
  echo "Warning: Using original zshrc"
fi

unset use_new_zshrc
