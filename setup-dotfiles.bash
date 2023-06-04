#!/bin/bash

cd ~/dotfiles

symlink() {
  if [ -e ~/$1 ]; then
    echo "Found existing file, created backup: ~/${1}.bak"
    mv ~/$1 ~/$1.bak
  fi
  ln -sf ~/dotfiles/$1 ~/$1;
}

symlink .profile
symlink .bashrc
symlink .bash_aliases
symlink .gitconfig

symlink .tmux.conf
symlink .tmux
symlink .vim

symlink .dconf-script.sh
symlink .post-install.sh

symlink .spicetify

symlink .config/copyq
symlink .config/dconf
symlink .config/kitty
symlink .config/neomatt
symlink .config/nvim
symlink .config/pop-shell
symlink .config/spicetify
symlink .config/user-dirs.dirs
symlink .config/user-dirs.locale

exec $BASH
