call plug#begin('~/.vim/plugged')

" Addons
Plug 'scrooloose/nerdtree'
Plug 'yegappan/mru'
Plug 'alvan/vim-closetag'
Plug 'vim-scripts/vim-auto-save'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tmhedberg/matchit'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'vim-scripts/tComment'
Plug 'jremmen/vim-ripgrep'
Plug 'blarghmatey/split-expander'
Plug 'farmergreg/vim-lastplace'
Plug 'jlanzarotta/bufexplorer'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'roman/golden-ratio'

" Tmux integration
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" File system navigation
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Syntax highlighting
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'elzr/vim-json'
Plug 'tpope/vim-markdown'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'
Plug 'zerowidth/vim-copy-as-rtf'
Plug 'leafgarland/typescript-vim'

" Syntax errors
Plug 'vim-syntastic/syntastic'
Plug 'ntpeters/vim-better-whitespace'

" Markdown support
Plug 'junegunn/goyo.vim'

" Git support
Plug 'tpope/vim-fugitive', { 'commit': '444ba9fda5d05aa14c7e8664fa4a66a59c62a550' }

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'icymind/NeoSolarized'

" Testing
Plug 'janko-m/vim-test'

" Gist
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'

call plug#end()
