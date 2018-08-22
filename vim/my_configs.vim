" Set OS clipboard
set clipboard=unnamed

" Set line numbers
" set number

" Map escape using jj
" :imap jj <Esc>

" Map save/update to zz
" nnoremap zz :update<cr>

" Open nerdtree
" autocmd VimEnter * NERDTree

" Map nerdtree to shortcut
" map <C-n> :NERDTreeToggle<CR>
" <leader>ne :NERDTreeToggle<cr>

" Change cursor shape in different modes for iTerm2 on mac
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Change cursor shape in different modes for Terminal on mac
" let &t_SI.="\e[5 q"
" let &t_SR.="\e[4 q"
" let &t_EI.="\e[1 q"

" Change timeout insert mode to normal mode
set timeoutlen=1000 ttimeoutlen=0
