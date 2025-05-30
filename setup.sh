#!/usr/bin/env bash

# TODO: adapt PS1 definition to show branch name in prompt (potentially not in this script)
# Replace existing definition in bashrc with the following: 
## Add git branch if its present to PS1
#parse_git_branch() {
# git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}
#if [ "$color_prompt" = yes ]; then
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
#else
# PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
#fi
# 
# TODO: configure mail and name as arguments to enable pushing it to GitHub? 
# TODO: Create .bash_aliases and source .generic_aliases from dotfiles
# TODO: Clone utils repository
# TODO: cat public GitHub SSH key and wait for any key to continue (otherwise pulling via SSH won't
#       work) -> enables adding the key to be added to GitHub while the script is paused

# Update existing packages and install commonly used ones
_update_and_install_general_packages() {
  sudo apt update
  sudo apt upgrade
  sudo apt install terminator
  sudo apt install vim
  sudo apt install git
  sudo apt install htop
}

# Packages that are only necessary for a non-WSL installation
_install_packages_for_native_installation() {
  WSL_CONFIG_FILE=/proc/sys/fs/binfmt_misc/WSLInterop

  if ! [ -f "$WSL_CONFIG_FILE" ]; then
    # Necessary to enable the EurKey layout
    sudo apt install gnome-tweaks
  fi
}

# Common Git configuration
_configure_git() {
  git config --global user.name "Firstname Lastname"
  git config --global user.email "mail@mail.com"
  git config --global core.autocrlf false
  git config --global core.editor vim
  git config --global init.defaultBranch main
}

# SSH configuration
_add_ssh_key() {
  cd
  ssh-keygen -t ed25519 -C "mail@mail.com"
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_ed25519_github
}

cd
git clone git@github.com:rourei/.dotfiles.git
ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.vim .vim

