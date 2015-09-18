" General {
  set nocompatible
  call pathogen#infect()

  autocmd FileType make setlocal noexpandtab " prevent tab expansion when working on Makefiles
  set expandtab  " expand tabs to spaces
  filetype plugin on " enable file type detection. Used by nerdcommenter.

  set autoindent " use indentation of previous line
  set shiftwidth=2 " indent also with 2 spaces
  set tabstop=2 " tab width is 2 spaces

  set ignorecase " ignore case by default
  set incsearch " search as I type
  set hlsearch  " highlight search results
  set showmatch " highlight matching braces
  syntax enable " if the terminal supports colors, then turn on syntax highligting.

  " Send more characters for redraws
   set ttyfast

   " Enable mouse use in all modes
   set mouse=a

   " Set this to the name of your terminal that supports mouse codes.
   " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
   set ttymouse=xterm2
" }

" Mappings {
  " Remap leader key from default '\' to SPACE
  let mapleader=' '

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
" }


" UI {
  let g:solarized_termcolors=256
  set background=dark
  colorscheme solarized

  set cursorcolumn " hilight the current column
  set cursorline " hilight the current line

  set list " we do this to show tabs
  set lcs=tab:»_,trail:·

  set number " vim will display line numbers
  set ruler " show column number

  let g:airline_powerline_fonts = 1
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

" NERDTree configuration {
  " autocmd vimenter * if !argc() | NERDTree | endif " open NERDTree when vim opens.
  " close vim if NERDTree is the last buffer.
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  let NERDSpaceDelims=1
  " https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt

  " ALT + p
  nnoremap <silent> π :NERDTreeToggle<CR>
" }

" CTRL+P configuration {
  set wildignore+=*.so,*.o,*.osx,*.swp,*.zip,binary_files,*vendor*,*tmp*,*node_modules*,*tasks*,*DerivedData*
" }

" Vim Markdown{
  let g:vim_markdown_folding_disabled=1
" }
