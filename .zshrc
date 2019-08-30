export PATH=$HOME/.npm-global:$PATH
export ZSH=$HOME/.oh-my-zsh
export EDITOR='vim'
export TERM="xterm-256color"

ZSH_THEME="robbyrussell"

plugins=(git command-not-found dirhistory docker gitfast git-extras jira last-working-dir sudo tmux vi-mode web-search z)

source $ZSH/oh-my-zsh.sh

source ~/projects/verzola/aliases/aliases.conf
