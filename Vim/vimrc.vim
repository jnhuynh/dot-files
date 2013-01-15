" John N. Huynh .vimrc file

"  General {
  " set backup " enable backups
  " set backupdir=~/.vim/backup " where to put backup files
  " set directory=~/.vim/tmp " directory to place swap files in
  set history=1000 " Store a ton of history (default is 20)
  " set ignorecase " ignore case when searching
  set incsearch " vi will search as you type
  "set mouse=a "allow mouse usage
  set nocompatible " stops vim from copying vi's bugs
  set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
  "set virtualedit=onemore " allow for cursor beyond last character
  call pathogen#infect()
  " autocmd vimenter * if !argc() | NERDTree | endif " open NERDTree when vim opens.
  " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " class vim if NERDTree is the last buffer.
" }

" vim UI {
  " colorscheme koehler
  " set column hilight color
  hi CursorColumn cterm=none ctermbg=black guibg=black
  " set line hilight color
  hi CursorLine cterm=none ctermbg=black guibg=black
  set background=dark
  " set colorcolumn=80
  set cursorcolumn " hilight the current column
  set cursorline " hilight the current line
  " set term=linux
  set list " we do this to show tabs
  "set listchars=tab:>-,trail:. " show tabs and trailing spaces
  set lcs=tab:»_,trail:·
  set number " vim will display line numbers
  set hlsearch  " highlight search results
  set ruler " show column number
  set showmatch " highlight matching braces
  set title " show title in console title bar
  syntax enable " If the terminal supports colors, then turn on syntax highligting.
" }

  autocmd BufNewFile,BufRead *.json set ft=javascript " sets json files to use javascript hi lighting

" Text Formatting {
  autocmd FileType make setlocal noexpandtab " prevent tab expansion when working on Makefiles
  filetype plugin on " enable file type detection. Used by nerdcommenter.
  let NERDSpaceDelims=1 " https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt
  set autoindent " use indentation of previous line
  " set comments=sl:/*,mb:\ *,elx:\ */:# " intelligent comments
  set expandtab  " expand tabs to spaces
  set iskeyword-=\_
  set shiftwidth=2 " indent also with 4 spaces
  " set smartindent " use intelligent indentation for C
  set tabstop=2 " tab width is 2 spaces
  set textwidth=80
" }

" Custom Mapping {
  nmap Ω :nohl<CR>
" }

" Ruby Abbreviations {
" Multi-line abbreivations help:
"   http://vim.wikia.com/wiki/Multi-line_abbreviations
" Vim insert mappings:
"   http://vimdoc.sourceforge.net/htmldoc/insert.html
" Vim remove inserted space from expansion:
"   http://vim.wikia.com/wiki/Use_abbreviations_for_frequently-used_words
"   http://vimdoc.sourceforge.net/htmldoc/insert.html#a
"   http://vimdoc.sourceforge.net/htmldoc/map.html#abbreviations
  func Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
  endfunc

  iab rzde def<CR>end<UP><END>
" Trailing space is added to make proper indentation using the defaulted added space insert by iab.
  iab rzdo do<CR><CR>end<UP><END><SPACE>

  " http://tomdoc.org/
  iab rzcd # Internal:<CR><CR>Examples<UP><UP><END>
  iab rzmd # Internal:<CR><CR>Examples<CR><CR>Returns<UP><UP><UP><UP><END>

  iab rzmb do \|\|<CR>end<UP><END><LEFT><C-R>=Eatchar('\s')<CR>
  iab rzsb { \|\| }<LEFT><LEFT><LEFT><C-R>=Eatchar('\s')<CR>

  iab rzif if<CR>end<UP><END>
" }
