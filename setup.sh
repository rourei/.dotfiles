#!/usr/bin/env bash

# TODO: adapt PS1 definition to show branch name in prompt (potentially not in this script)
# TODO: configure mail and name as arguments to enable pushing it to GitHub? 
# TODO: Create .bash_aliases and source .generic_aliases from dotfiles
# TODO: Clone utils repository
# TODO: cat public GitHub SSH key and wait for any key to continue (otherwise pulling via SSH won't
#       work) -> enables adding the key to be added to GitHub while the script is paused

# Packages
sudo apt update
sudo apt upgrade
sudo apt install terminator
sudo apt install vim
sudo apt install git
sudo apt install htop

WSL_CONFIG_FILE=/proc/sys/fs/binfmt_misc/WSLInterop
if ! [ -f "$WSL_CONFIG_FILE" ]; then
  # Necessary to enable the EurKey layout
  sudo apt install gnome-tweaks
fi

# Git Config
git config --global user.name "Firstname Lastname"
git config --global user.email "mail@mail.com"
git config --global core.autocrlf false
git config --global core.editor vim
git config --global init.defaultBranch main

cd
ssh-keygen -t ed25519 -C "mail@mail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519_github

cd
git clone git@github.com:rourei/.dotfiles.git
ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.vim .vim

