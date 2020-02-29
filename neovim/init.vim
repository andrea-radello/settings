" Avoid conglict with vscide extension asvetliakov.vscode-neovim
if !exists('g:vscode')

  " Load plugins
  call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'dracula/vim'
  Plug 'vitalk/vim-simple-todo'
  call plug#end()
  
  " Set dracula as theme
  let g:dracula_colorterm = 0
  syntax on
  color dracula
  
  " Set line numbers
  set number
  
  " Do not copy line numbers and gutter on yank
  set clipboard=unnamedplus

endif
