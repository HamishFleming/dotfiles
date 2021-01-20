#!/bin/bash

#TODO set up file backups of original files to .dot_old for each file
#TODO var paths for each dotfile ie: mv $(PATH)/.filerc, mainly for things like awesome and zsh theme with nth level 
# symlinks

#ZSH Theme
ln -s ~/.dotfiles/my-theme.zsh-theme ~/.oh-my-zsh/themes/my-theme.zsh-theme

#git config
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

#awesomerc
ln -s ~/.dotfiles/rc.lua ~/.config/awesome/rc.lua
