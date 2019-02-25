# Easier navigation: .., ..., ...., .....
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# ls aliases
colorflag='-G'
export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'

# List all files colorized in long format
alias l='ls -lF ${colorflag}'

# List all files colorized in long format, including dot files
alias la='ls -laF ${colorflag}'

# Always use color output for `ls`
alias ls='command ls ${colorflag}'

# add
alias ga='git add'
alias gap='git add --patch'

# commit
alias gc='git commit'
alias gca='git commit --amend'
alias gm='git commit --message'

# diff
alias gd='git diff'
alias gds='git diff --staged'
alias gdc='git diff --cached'

# rebase
alias grb='git rebase'
alias grbi='git rebase --interactive'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'

# log
alias glg='git log --graph --pretty="%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# remote
alias grv='git remote -v'
alias grp='git remote prune'

# checkout
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gcd='git checkout development'

# status
alias gst='git status'
alias gss='git status --short'

# cherry-pick
alias gcp='git cherry-pick'

# push
alias gp='git push'
alias gpf='git push -f'

# pull
alias gl='git pull'

# yarn
alias y='yarn'
alias ya='yarn add'
alias yr='yarn remove'
alias ys='yarn start'
