###############
#### ZPLUG ####
###############
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source $HOME/.zplug/init.zsh

zplug "plugins/z", from:oh-my-zsh
#zplug "zsh-users/zsh-completions"
#zplug "zsh-users/zsh-autosuggestions"
#zplug "zsh-users/zsh-syntax-highlighting"
#zplug "zsh-users/zsh-history-substring-search"
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

###############
## ENV VARS ###
###############
export EDITOR='vim'
export TERM="xterm-256color"
export PATH=$PATH:/snap/bin/
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/home/verzola/projects/verzola/neovim-config/lua-language-server/bin

###############
### HISTORY ###
###############
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt appendhistory
setopt extended_glob

###############
### ALIASES ###
###############
source $HOME/projects/verzola/aliases/aliases.conf

###############
##### FZF #####
###############
[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh

###############
#### ZPLUG ####
###############
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load #--verbose

SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  package       # Package version
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_CHAR_SYMBOL="->"
SPACESHIP_CHAR_SUFFIX=" "

[ -f ~/.secrets.zsh ] && source $HOME/.secrets.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH=/usr/bin:$PATH
alias luamake=/home/verzola/projects/verzola/neovim-config/lua-language-server/3rd/luamake/luamake
