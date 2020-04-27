if [[ -n "$PS1" ]]; then

  # add `~/bin` to the `$PATH`
  export PATH="$HOME/bin:$PATH";

  # Set $DOTFILES environmental variable
  if [ -z ${DOTFILES+x} ]; then
    DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  fi

  # include all bash helper files
  for file in $DOTFILES/bash/{aliases,bash_prompt}.sh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
  done;
  unset file;

  # add git completion
  source /usr/local/etc/bash_completion.d/git-completion.bash
  __git_complete gco _git_checkout
  __git_complete gc _git_commit
  __git_complete gp _git_push


  # append to the Bash history file, rather than overwriting it
  export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
  export HISTSIZE=100000                   # big big history
  export HISTFILESIZE=100000               # big big history
  shopt -s histappend               # append to history, don't overwrite it

  # Save and reload the history after each command finishes
  export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

  # autocorrect typos in path names when using `cd`
  shopt -s cdspell;

  # Set NVM_DIR if it isn't already defined
  [[ -z "$NVM_DIR" ]] && export NVM_DIR="$HOME/.nvm"

  # Load nvm if it exists
  [[ -f "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

  # load up rbenv
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

  # load up ssh-agent
  if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
  fi

  # fuck
  eval $(thefuck --alias)

  # z is the new j, yo
  source /usr/local/etc/profile.d/z.sh

  # Get color support for 'less'
  export LESS="--RAW-CONTROL-CHARS"

  # Use colors for less, man, etc.
  [[ -f $DOTFILES/home/.LESS_TERMCAP ]] && . $DOTFILES/home/.LESS_TERMCAP

  # Setting fd as the default source for fzf
  export FZF_DEFAULT_COMMAND='fd -H -E .git'

  # pyenv
  eval "$(pyenv init -)"

fi
