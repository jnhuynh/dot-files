if has('gui_running')
" UI {
  set guifont=Menlo:h14
  " http://choorucode.wordpress.com/2011/07/29/vim-set-color-of-colorcolumn/
  hi colorcolumn guibg=#444444
  hi cursorline cterm=none ctermbg=black guibg=#444444
  hi cursorcolumn cterm=none ctermbg=black guibg=#444444
  set cursorcolumn
  set cursorline
  set vb " Disables audio bell.
" }

" Numbered tab navigation {
" (http://ilessendata.blogspot.com/2011/05/vimrc-switching-tabs-in-macvim.html)
  map <D-1> :tabn 1<CR>
  map <D-2> :tabn 2<CR>
  map <D-3> :tabn 3<CR>
  map <D-4> :tabn 4<CR>
  map <D-5> :tabn 5<CR>
  map <D-6> :tabn 6<CR>
  map <D-7> :tabn 7<CR>
  map <D-8> :tabn 8<CR>
  map <D-9> :tabn 9<CR>
" }
end
