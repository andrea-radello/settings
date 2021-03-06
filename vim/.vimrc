" Set vim-plug as default plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load plugins
" Install plugins using `vim +PlugInstall +qall`
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'
Plug 'vitalk/vim-simple-todo'
Plug 'tpope/vim-commentary'
call plug#end()

" Set dracula as theme
let g:dracula_colorterm = 0 "fix bkg color in vim
syntax on
color dracula

" Eliminating delays on ESC in vim and zsh
set timeoutlen=1000 ttimeoutlen=0

" Access the system clipboard
set clipboard=unnamed

" iTerm2/mac change cursor shape in different modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Set line numbers
set number

" Map escape using jj
" :imap jj <Esc>

" Map save/update to zz
" nnoremap zz :update<cr>

" Open nerdtree
" autocmd VimEnter * NERDTree

" Map nerdtree to shortcut
" map <C-n> :NERDTreeToggle<CR>
" <leader>ne :NERDTreeToggle<cr>
