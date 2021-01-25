#!/bin/bash

BACKUP_DIR="$HOME/.dotfiles"
THIS_SCRIPT_FULL_PATH="$BACKUP_DIR/$(basename -- "$0")"


cd "$DOTFILE_DIR" || exit
if ! git diff --quiet HEAD || git status --short; then
  git add --all
  git commit -m "updating dotfiles on $(date -u)"
  git push origin master
fi


# Make this script call itself hourly from the crontab, if it isn't already.
if ! crontab -l | grep "$THIS_SCRIPT_FULL_PATH"; then
  (crontab -l ; echo "0 * * * * $THIS_SCRIPT_FULL_PATH > /dev/null 2>&1") | sort - | uniq - | crontab - 2>&1
fi

