# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=/home/verzola/.oh-my-zsh

ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
ZSH_TMUX_AUTOSTART="true"

plugins=(git command-not-found dirhistory docker gitfast git-extras jira last-working-dir sudo tmux vi-mode web-search z)

source $ZSH/oh-my-zsh.sh
source /home/verzola/aliases/aliases.conf
export EDITOR='vim'
export TERM="xterm-256color-italic"
