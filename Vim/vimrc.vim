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
  " Allows copy/pasting via pbcopy/pbpaste
  " http://robots.thoughtbot.com/post/19398560514/how-to-copy-and-paste-with-tmux-on-mac-os-x
  set clipboard=unnamed

  call pathogen#infect()
" }

" vim UI {
  colorscheme jhuynh_custom
  " set colorcolumn=80
  " hi SignColumn ctermbg=black guibg=#303030 " for syntastic column color.
  set cursorcolumn " hilight the current column
  set cursorline " hilight the current line

  set list " we do this to show tabs
  "set listchars=tab:>-,trail:. " show tabs and trailing spaces
  set lcs=tab:»_,trail:·

  set number " vim will display line numbers
  set ruler " show column number

  set hlsearch  " highlight search results
  set showmatch " highlight matching braces
  " set title " show title in console title bar
  syntax enable " If the terminal supports colors, then turn on syntax highligting.

  " use Ctrl+L to toggle the line number counting method
  function! g:ToggleNuMode()
    if(&rnu == 1)
      set nu
    else
      set rnu
    endif
  endfunc

  nnoremap <C-L> :call g:ToggleNuMode()<cr>

  " Status line {
    " http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
    set laststatus=2 " show the status bar on the bottom

    " set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
    " set statusline+=%{&ff}] " file format
    " set statusline+=%h      " help file flag
    " set statusline+=%m      " modified flag
    " set statusline=%t             " tail of the filename
    set statusline=%f               " relative file path
    set statusline+=%r              " read only flag
    set statusline+=%y              " filetype
    " set statusline+=\ \ \ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
    set statusline+=%=              " left/right separator
    set statusline+=[%c,             " cursor column
    set statusline+=%l]
    " set statusline+=%l/%L           " cursor line/total lines
    " set statusline+=\ %P            " percent through file
  " }

  " Syntastic Settings {
    " set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'active_filetypes': [],
                               \ 'passive_filetypes': ['html'] }
  " }

  " NERDTree configuration {
    " autocmd vimenter * if !argc() | NERDTree | endif " open NERDTree when vim opens.
    " close vim if NERDTree is the last buffer.
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    let NERDSpaceDelims=1 " https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt
    nnoremap <silent> π :NERDTreeToggle<CR>
  " }
" }

  " sets json files to use javascript hi lighting
  autocmd BufNewFile,BufRead *.json set ft=javascript
  " set Markdown files to have hard text wrap
  autocmd BufNewFile,BufRead *.md,*.txt setlocal textwidth=80

" Text Formatting {
  autocmd FileType make setlocal noexpandtab " prevent tab expansion when working on Makefiles
  set expandtab  " expand tabs to spaces
  filetype plugin on " enable file type detection. Used by nerdcommenter.

  set iskeyword-=\_

  set autoindent " use indentation of previous line
  set shiftwidth=2 " indent also with 4 spaces
  set tabstop=2 " tab width is 2 spaces
  " set comments=sl:/*,mb:\ *,elx:\ */:# " intelligent comments
  " set smartindent " use intelligent indentation for C
  " set textwidth=80
" }

" Custom Mapping {
  nnoremap < gv<
  nnoremap > gv>
  nnoremap <silent> Ω :nohl<CR>

  " Markdown Related {
    " Wraps the paragraph
    nnoremap <silent> ∑ <S-{><S-V><S-}>gq
    noremap ¬ <ESC>lbi[<ESC>ea][]<ESC>i
    vnoremap ç :w !pbcopy<CR><CR>
  " }

  " Tabular Related {
    " Line up common seperators.
    vnoremap t: :Tab /:\zs<CR>
    vnoremap t= :Tab /=<CR>
    vnoremap t> :Tab /=><CR>
  " }
" }

" Numbered tab navigation {
  cab t tabf

" (http://ilessendata.blogspot.com/2011/05/vimrc-switching-tabs-in-macvim.html)
" These are all ALT-<NUM> mappings. Useful for when I used CLI Vim.
  " noremap ¡ :tabn 1<CR>
  " noremap ™ :tabn 2<CR>
  " noremap £ :tabn 3<CR>
  " noremap ¢ :tabn 4<CR>
  " noremap ∞ :tabn 5<CR>
  " noremap § :tabn 6<CR>
  " noremap ¶ :tabn 7<CR>
  " noremap • :tabn 8<CR>
  " noremap ª :tabn 9<CR>
" Make Vim tab navigation similar in style to my Tmux navigation.
  noremap <C-w>1 :tabn 1<CR>
  noremap <C-w>2 :tabn 2<CR>
  noremap <C-w>3 :tabn 3<CR>
  noremap <C-w>4 :tabn 4<CR>
  noremap <C-w>5 :tabn 5<CR>
  noremap <C-w>6 :tabn 6<CR>
  noremap <C-w>7 :tabn 7<CR>
  noremap <C-w>8 :tabn 8<CR>
  noremap <C-w>9 :tabn 9<CR>
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

  iab sterr $stderr.puts("XXX")<ESC>bi

  cab be !bundle exec
" iab rzde def<CR>end<UP><END>
" Trailing space is added to make proper indentation using the defaulted added space insert by iab.
" iab rzdo do<CR><CR>end<UP><END><SPACE>

" " http://tomdoc.org/
" iab rzcd # Internal:<CR><CR>Examples<UP><UP><END>
" iab rzmd # Internal:<CR><CR>Examples<CR><CR>Returns<UP><UP><UP><UP><END>

" iab rzmb do \|\|<CR>end<UP><END><LEFT><C-R>=Eatchar('\s')<CR>
" iab rzsb { \|\| }<LEFT><LEFT><LEFT><C-R>=Eatchar('\s')<CR>

" iab rzif if<CR>end<UP><END>
" }
