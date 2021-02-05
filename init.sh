#!/bin/bash

#TODO set up file backups of original files to .dot_old for each file
#TODO var paths for each dotfile ie: mv $(PATH)/.filerc, mainly for things like awesome and zsh theme with nth level 

BACKUP_DIR="$HOME/.dotfiles"
DOTFILES_DIR="$BACKUP_DIR"


git clone --depth=1 git@github.com:HamishFleming/dotfiles.git "$BACKUP_DIR" || {
  printf "Error: git clone of configuration repo failed\n"
  exit 1
}




# symlinks adding the force flag here, temporary backups shall be added once i bother setting it in stone

#ZSH Theme
ln -sf ~/.dotfiles/my-theme.zsh-theme ~/.oh-my-zsh/themes/my-theme.zsh-theme
#Zsh Alias
ln -sf ~/.dotfiles/.zsh-alias.sh ~/.zsh-alias.sh
#git config
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
#awesomerc
ln -sf ~/.dotfiles/rc.lua ~/.config/awesome/rc.lua




#bootstrap backup script 
"$BACKUP_DIR/config_updater.sh"

