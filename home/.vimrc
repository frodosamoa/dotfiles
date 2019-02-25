" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'tpope/vim-sensible'

Plug 'airblade/vim-gitgutter'

Plug 'scrooloose/nerdtree'

Plug 'altercation/vim-colors-solarized'

" If installed using Homebrew
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

syntax enable
set background=dark
colorscheme solarized
