export DOTFILES=pwd
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

. $(brew --prefix)/etc/profile.d/z.sh

source "$HOME/Code/dotfiles/aliases.sh"

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

##### BINDINGS
bindkey "^R" history-incremental-search-backward
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward

##### HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS

eval $(thefuck --alias)

eval "$(pyenv init -)"

# z is the new j, yo
source /usr/local/etc/profile.d/z.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f $DOTFILES/home/.LESS_TERMCAP ]] && . $DOTFILES/home/.LESS_TERMCAP
