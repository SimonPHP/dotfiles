#!/bin/bash
# Script to to get the actual config files of the system

function syncDir {
  rsync -avP --delete $basedir$1 $safedir
}

config_dirs=()

config_dirs+=(fish)
config_dirs+=(tmux)

basedir=~/.config/
safedir=config/

for dir in "${config_dirs[@]}"
do
  echo "would safe this files"
  echo "$(ls $basedir$dir)"
  syncDir $dir 
done

