map <Leader>n :NERDTreeToggle<CR>

" Clear hlsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" fzf
" Open files in horizontal split
nnoremap <silent> <Leader>t :call fzf#run({
\   'down': '40%',
\   'sink': 'tabe' })<CR>

nnoremap <silent> <Leader>x :call fzf#run({
\   'down': '40%',
\   'sink': 'botright split' })<CR>

" Open files in vertical horizontal split
nnoremap <silent> <Leader>v :call fzf#run({
\   'right': winwidth('.') / 2,
\   'sink':  'vertical botright split' })<CR>


