" Load plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'
Plug 'vitalk/vim-simple-todo'
" Use plugin outside vscode
if !exists('g:vscode')
  Plug 'tpope/vim-commentary'
endif
call plug#end()

" Enable setting outside vscode
if !exists('g:vscode')

  " Set dracula as theme
  let g:dracula_colorterm = 0
  syntax on
  color dracula

  " Set line numbers
  set number

  " Set clipborad register
  set clipboard=unnamedplus

  " Set mouse
  set mouse=a

endif

" Emulate vim-commentary keyboard shortcuts by mapping them with vscode
" comment feature, do this in order to comment more easily .tsx files
if exists('g:vscode')
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine
endif

" Use spaces for all indentation
set expandtab
set shiftwidth=2
set softtabstop=2
