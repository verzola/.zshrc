###############
## ENV VARS ###
###############
export PATH=/snap/bin:$PATH
export EDITOR='vim'
export TERM="xterm-256color"

###############
### ALIASES ###
###############
source ~/projects/verzola/aliases/aliases.conf

###############
### ANDROID ###
###############
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

###############
## OH MY ZSH ##
###############
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
ZSH_TMUX_AUTOSTART=true
plugins=(git z tmux web-search)
source $ZSH/oh-my-zsh.sh

###############
##### FZF #####
###############
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
