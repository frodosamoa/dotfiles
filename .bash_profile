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

  # append to the Bash history file, rather than overwriting it
  shopt -s histappend;

  # autocorrect typos in path names when using `cd`
  shopt -s cdspell;

  # load up nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

  # load up rbenv
  if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

  # load up ssh-agent
  if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
  fi

  # z is the new j, yo
  source /usr/local/etc/profile.d/z.sh

fi
