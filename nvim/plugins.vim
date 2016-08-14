call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline' " Status Bar
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy Search
Plug 'airblade/vim-gitgutter' " Git Gutter
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline-themes'
" Add plugins to &runtimepath
call plug#end()

" Airline configuration
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'luna'

