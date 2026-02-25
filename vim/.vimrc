"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
call plug#end()

" Display
set number
set cursorline

" Tabs and indentation
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Search
set ignorecase
set smartcase
set hlsearch

" System clipboard
set clipboard=unnamed

" No swap files
set noswapfile
set nobackup
set nowritebackup
