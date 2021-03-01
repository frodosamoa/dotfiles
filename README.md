# dotfiles

very minimal set of dotfiles for your terminal

## installation

0. clone this repo:

   `$ git clone git@github.com:frodosamoa/dotfiles.git`

## homebrew

install homebrew in order to make use of the `Brewfile` located in this repo:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

then:

    brew tap Homebrew/bundle
    cd $DOTFILES && brew bundle

and also you can export the `Brewfile`:

    brew bundle dump --force

### nvm

nvm manages your node versions:

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
