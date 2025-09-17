#!/usr/bin/env zsh

#  NOTE: Plugin Manager 
#  https://antidote.sh
#  https://github.com/mattmc3/antidote/tree/main

export ANTIDOTE_HOME=$ZDOTDIR/.antidote_repos
. /usr/share/zsh-antidote/antidote.zsh
antidote load

# NOTE: Refer to .zsh_plugins.txt for plugins and settings format
# Get all activated packages and their settings (if any) and source them
current_pkgs=($(awk '
  {gsub(/^[ \t]+|[ \t]+$/, "")}
  !/^#/ && NF {
    new_path = $1
    for (i=1; i<=NF; i++) {
      if ($i ~ /^path:/) {
        new_path = new_path $i
        break
      }
    }
    gsub("path:", "/", new_path)
    print new_path
  }' "$ZDOTDIR/.zsh_plugins.txt"))

for pkg in $current_pkgs; do
  #echo "Found package $pkg"
  file=$ZDOTDIR/settings/$pkg.zsh
  if [ -f $file ]; then
    . $file
    # echo "Found config file in $file"
  fi
done

unset current_pkgs
