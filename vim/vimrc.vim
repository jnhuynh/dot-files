" John N. Huynh .vimrc file

"  General {
  " set backup " enable backups
  " set backupdir=~/.vim/backup " where to put backup files
  " set directory=~/.vim/tmp " directory to place swap files in
  set history=1000 " Store a ton of history (default is 20)
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

  " Vim Folding {
      set foldmethod=syntax
      " Without a level, Vim auto-folds *everything*.
      set foldlevel=1

      " Tell it to remember the fold levels you last had in each file
      " au BufWinLeave ?* mkview
      " au BufWinEnter ?* silent loadview

      nnoremap <silent> ft za
      nnoremap <silent> fo zo
      nnoremap <silent> fO zO
      nnoremap <silent> fc zc
      nnoremap <silent> fC zC
      nnoremap <silent> fr zr
      nnoremap <silent> fm zm
  " }

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

  " Fugitive-vim Settings {
      cab gcom Gcommit
      cab gst Gstatus
      cab gbl Gblame
      cab glg !git lg
      cab gph !git ph
  " }

  " Syntastic Settings {
    " set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['html'] }
    " cab sc SyntasticCheck
  " }

  " Vim-Git-Gutter Settings {
    let g:gitgutter_enabled = 0 " off by default
    let g:gitgutter_eager   = 0 " eager causes lag

    " ALT + g
    nnoremap <silent> © :GitGutterToggle<CR>
  " }

  " NERDTree configuration {
    " autocmd vimenter * if !argc() | NERDTree | endif " open NERDTree when vim opens.
    " close vim if NERDTree is the last buffer.
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
    let NERDSpaceDelims=1 " https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt

    " ALT + p
    nnoremap <silent> π :NERDTreeToggle<CR>
  " }

  " CTRL+P configuration {
    set wildignore+=*.so,*.o,*.osx,*.swp,*.zip,binary_files,*vendor/cache*,*tmp/*
  " }
" }

  " sets json and js.es6 files to use javascript hi lighting
  autocmd BufNewFile,BufRead *.json set ft=javascript
  autocmd BufNewFile,BufRead *.es6 set ft=javascript
  " set Markdown files to have hard text wrap
  autocmd BufNewFile,BufRead *.md,*.txt setlocal textwidth=80

" Text Formatting {
  autocmd FileType make setlocal noexpandtab " prevent tab expansion when working on Makefiles
  autocmd FileType javascript setlocal tabstop=4 " prevent tab expansion when working on Makefiles
  autocmd FileType javascript setlocal shiftwidth=4 " prevent tab expansion when working on Makefiles
  set expandtab  " expand tabs to spaces
  filetype plugin on " enable file type detection. Used by nerdcommenter.

  set iskeyword-=\_

  set autoindent " use indentation of previous line
  set shiftwidth=2 " indent also with 2 spaces
  set tabstop=2 " tab width is 2 spaces
  " set comments=sl:/*,mb:\ *,elx:\ */:# " intelligent comments
  " set smartindent " use intelligent indentation for C
  " set textwidth=80
" }

" Custom Mapping {

  " Remap leader key from default '\' to SPACE
  let mapleader=' '

  function! g:ToggleNuMode()
    if(&rnu == 1)
      set nu
    else
      set rnu
    endif
  endfunc

  " use ALT+l to toggle the line number counting method
  " nnoremap <silent> ¬ :call g:ToggleNuMode()<cr>

  " Quick Vim split resizing
  " http://vim.wikia.com/wiki/Resize_splits_more_quickly
  " 5 to the left
  nnoremap <silent> <Leader>h :vertical resize -5<CR>
  " 5 to the right
  nnoremap <silent> <Leader>l :vertical resize +5<CR>
  " 5 to the up
  nnoremap <silent> <Leader>k :resize -5<CR>
  " 5 to the down
  nnoremap <silent> <Leader>j :resize +5<CR>

  " Allows quick reindentation by accessing the last visual mode slection.
  nnoremap <silent> < gv<
  nnoremap <silent> > gv>

  " Disables hilight from search.
  nnoremap <silent> <Leader>z :nohl<CR>

  " Toggle ignore case when searching, ALT+i
  " http://stackoverflow.com/a/620254
  nnoremap <silent> ˆ :set ignorecase!<CR>

  " Markdown Related {
    " Removes duplicate spaces, ALT+s
    vnoremap <silent> ß :s;\(\S\)  \(\S\);\1 \2;g<CR>
    " Copy to system buffer, ALT+c
    vnoremap <silent> ç :w !pbcopy<CR><CR>
    " Wraps the paragraph, ALT+w
    nnoremap <silent> ∑ <S-{><S-V><S-}>gq
    " Wraps a word in markdown link format, ALT+a
    noremap <silent> å <ESC>lbi[<ESC>ea][]<ESC>i
  " }

  " Tabular Related {
    " Line up common seperators.
    vnoremap <silent> t: :Tab /:\zs<CR>
    vnoremap <silent> t= :Tab /=<CR>
    vnoremap <silent> t> :Tab /=><CR>
  " }
" }

" Numbered tab navigation {
  cab t tabe

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
  nnoremap <silent> <LEADER>w1 :tabn 1<CR>
  nnoremap <silent> <LEADER>w2 :tabn 2<CR>
  nnoremap <silent> <LEADER>w3 :tabn 3<CR>
  nnoremap <silent> <LEADER>w4 :tabn 4<CR>
  nnoremap <silent> <LEADER>w5 :tabn 5<CR>
  nnoremap <silent> <LEADER>w6 :tabn 6<CR>
  nnoremap <silent> <LEADER>w7 :tabn 7<CR>
  nnoremap <silent> <LEADER>w8 :tabn 8<CR>
  nnoremap <silent> <LEADER>w9 :tabn 9<CR>

  " Use SPACE to navigate splits.
  " http://vim.wikia.com/wiki/Switch_between_Vim_window_splits_easily
  nnoremap <silent> <LEADER>wk :wincmd k<CR>
  nnoremap <silent> <LEADER>wj :wincmd j<CR>
  nnoremap <silent> <LEADER>wh :wincmd h<CR>
  nnoremap <silent> <LEADER>wl :wincmd l<CR>
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

  iab sterr $stderr.puts("\n\nXXX #{.inspect}\n\n")<ESC>6bhi

  cab be !bundle exec
" }
