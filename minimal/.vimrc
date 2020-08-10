" Set vim-plug as default plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
"Plug 'scrooloose/nerdtree'
"Plug 'tpope/vim-surround'
"Plug 'vitalk/vim-simple-todo'
call plug#end()

" Eliminating delays on ESC in vim and zsh
set timeoutlen=1000 ttimeoutlen=0

" Access the system clipboard
set clipboard=unnamed

" Set line numbers
set number

" Terminal/mac change cursor shape in different mode
" Cursor settings:
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
