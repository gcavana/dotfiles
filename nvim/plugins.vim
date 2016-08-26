call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline' " Status Bar
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy Search
Plug 'airblade/vim-gitgutter' " Git Gutter
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'scrooloose/syntastic'
Plug 'mhartington/oceanic-next'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'bronson/vim-trailing-whitespace'
" Add plugins to &runtimepath
call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
 syntax enable
 colorscheme OceanicNext
 set background=dark

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
"let g:airline_theme= 'luna'
let g:airline_theme='oceanicnext'
" UltiSnips Configuration
let g:UltiSnipsExpandTrigger="<c-space>"
let g:airline_powerline_fonts = 1
"Syntastic
"let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_php_checkers = ['phpcs --standard="Symfony2"']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
