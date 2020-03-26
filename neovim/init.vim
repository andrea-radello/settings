" Settings for Neo Vim and vscode extension `asvetliakov.vscode-neovim` 

" Load plugins using `vim-plug`
call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'altercation/vim-colors-solarized'
  Plug 'vitalk/vim-simple-todo'
  " Do not use this plugin in vscode (read below)
  if !exists('g:vscode')
    Plug 'tpope/vim-commentary'
  endif
call plug#end()

" Enable settings in terminal
if !exists('g:vscode')
  " Set line numbers
  set number

  " Set clipborad register
  set clipboard=unnamedplus

  " Set mouse
  set mouse=a

  " Use spaces for all indentation
  set expandtab
  set shiftwidth=2
  set softtabstop=2
endif

" Emula `vim-commentary` keyboard shortcuts by mapping them with vscode
" comment native feature, do this in order to comment more easily .tsx files
if exists('g:vscode')
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine
endif

" Enable vim airline solarized
let g:airline_theme='solarized'
