" Disable nvim settings in vscode
if !exists('g:vscode')

  " Load plugins
  call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'dracula/vim'
  Plug 'vitalk/vim-simple-todo'
  Plug 'tpope/vim-commentary'
  call plug#end()
  
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
