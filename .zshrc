export PATH=$HOME/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_TMUX_AUTOSTART="true"

plugins=(git command-not-found dirhistory docker gitfast git-extras jira last-working-dir sudo tmux vi-mode web-search z)

source $ZSH/oh-my-zsh.sh
source ~/aliases.conf
export EDITOR='vim'
export TERM="xterm-256color-italic"
