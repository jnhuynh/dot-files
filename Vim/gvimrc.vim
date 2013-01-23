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
end
