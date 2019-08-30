#!/bin/sh
set -e

if [ -d ~/.oh-my-zsh ]; then
  echo "Updating Oh My Zsh..."
  zsh -ic "upgrade_oh_my_zsh"
else
  echo "Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ ! -d ~/projects/verzola/zshrc ]; then
  git clone https://github.com/verzola/.zshrc.git ~/projects/verzola/zshrc
else
  git -C ~/projects/verzola/zshrc pull origin master
fi

if [ ! -f ~/.zshrc ]; then
    ln -s ~/projects/verzola/zshrc/.zshrc ~/.zshrc
fi
