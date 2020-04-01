###############
#### ZPLUG ####
###############
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source ~/.zplug/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

###############
## ENV VARS ###
###############
export EDITOR='vim'
export TERM="xterm-256color"
export PATH=$PATH:/snap/bin/
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH=$PATH:$HOME/.npm-global/bin
export PATH=$PATH:$HOME/bin


###############
### HISTORY ###
###############
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt appendhistory

###############
### ALIASES ###
###############
source ~/projects/verzola/aliases/aliases.conf

###############
##### FZF #####
###############
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###############
#### ZPLUG ####
###############
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose

