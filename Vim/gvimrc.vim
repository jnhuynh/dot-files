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
  map <D-1> :tabn 1<Cr>
  map <D-2> :tabn 2<Cr>
  map <D-3> :tabn 3<Cr>
  map <D-4> :tabn 4<Cr>
  map <D-5> :tabn 5<Cr>
  map <D-6> :tabn 6<Cr>
  map <D-7> :tabn 7<Cr>
  map <D-8> :tabn 8<Cr>
  map <D-9> :tabn 9<Cr>
" }
end
