# dotfiles
very minimal set of dotfiles for your terminal

## installation

0. clone this repo:

   `$ git clone git@github.com:frodosamoa/dotfiles.git`

1. run the `./init.sh` script located in this repository. this adds a few lines to your `~/.bash_profile` which will link together the `.bash_profile` file located in this directory (which makes use of all the scripts located in `/bash`).
this also copies over an `.inputrc` file to your home directory.

## homebrew

install homebrew in order to make use of the `Brewfile` located in this repo:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

then:

    brew tap Homebrew/bundle
    cd $DOTFILES && brew bundle


## language specific

### nvm

nvm manages your node versions:

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

the `.bash_profile` file in this repo loads up `nvm` for you.

## macOS defaults

you can run the `./install/macos.sh` for some sensible mac defaults when you get a new machine.

## todo

- [ ] add `karabiner.json` for karabiner defaults
- [ ] add `Solarized Terminal.terminal` for Terminal defaults
- [ ] add aText snippets?
- [ ] add Hazel rules?
- [ ] add Alfred preferences and links to workflows?
- [ ] add VSCode keyboard shortcuts that you have modified?
- [ ] add VSCode user settings (font, whitespace trimming, etc.)

## apps that are installed through mac app store

todoist, mindnode, lynda.com

## thanks

[@mathiasbynes](https://github.com/mathiasbynens) for his [dotfiles](https://github.com/mathiasbynens/dotfiles).
[@ungoldman](https://github.com/ungoldman) for his [dotfiles](https://github.com/ungoldman/dotfiles).
