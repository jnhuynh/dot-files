if has('gui_running')
" UI {
  colorscheme apprentice
  set guifont=Menlo:h16
  " http://choorucode.wordpress.com/2011/07/29/vim-set-color-of-colorcolumn/
  hi colorcolumn guibg=#444444
  hi cursorline cterm=none ctermbg=black guibg=#444444
  hi cursorcolumn cterm=none ctermbg=black guibg=#444444
  set cursorcolumn
  set cursorline
  set vb " Disables audio bell.
  " Fixes weird column styling with gitgutter
  highlight clear SignColumn
  " Hides the scroll bar.
  " http://thisblog.runsfreesoftware.com/?q=Remove+scrollbars+from+Gvim
  set guioptions+=LRrb
  set guioptions-=LRrb
" }
"
" Numbered tab navigation {
" (http://ilessendata.blogspot.com/2011/05/vimrc-switching-tabs-in-macvim.html)
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
" }
end
