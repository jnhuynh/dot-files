" General {
  " set clipboard=unnamedplus " copy paste with yank and put
  " yank to clipboard
  if has("clipboard")
    set clipboard=unnamed " copy to the system clipboard

    if has("unnamedplus") " X11 support
      set clipboard+=unnamedplus
    endif
  endif

  set nocompatible
  call pathogen#infect()

  autocmd FileType make setlocal noexpandtab " prevent tab expansion when working on Makefiles
  set expandtab  " expand tabs to spaces
  filetype plugin on " enable file type detection. Used by nerdcommenter.

  set autoindent " use indentation of previous line
  set shiftwidth=2 " indent also with 2 spaces
  set tabstop=2 " tab width is 2 spaces

  set backspace=indent,eol,start " enabling erasing previous entered characters in insert mode

  set ignorecase " ignore case by default
  set incsearch " search as I type
  set hlsearch  " highlight search results
  set showmatch " highlight matching braces
  syntax enable " if the terminal supports colors, then turn on syntax highligting.
  " Use old regex engine so vim is snappy https://stackoverflow.com/a/25276429
  " Was slow due to ruby syntax highlight matching regex.
  set re=1

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
  nnoremap <silent> <Leader>wh :vertical resize -10<CR>
  " 5 to the right
  nnoremap <silent> <Leader>wl :vertical resize +10<CR>
  " 5 to the up
  nnoremap <silent> <Leader>wk :resize -10<CR>
  " 5 to the down
  nnoremap <silent> <Leader>wj :resize +10<CR>

  " Allows quick reindentation by accessing the last visual mode slection.
  nnoremap <silent> < gv<
  nnoremap <silent> > gv>

  " Disables hilight from search.
  nnoremap <silent> <Leader>z :nohl<CR>

  cab ack Ack!
  " cab gb Gblame

  " Toggle ignore case when searching, ALT+i
  " http://stackoverflow.com/a/620254
  nnoremap <silent> ˆ :set ignorecase!<CR>
" }

" UI {
  " let g:solarized_termcolors=256
  " set background=dark
  " colorscheme solarized

  if $TERM == "xterm-256color"
    set t_Co=256
  endif

  set background=light
  colorscheme github

  set cursorcolumn " Hilight the current column
  hi CursorColumn ctermbg=254
  set cursorline " Hilight the current line
  hi CursorLine ctermbg=254
  set colorcolumn=100 " Show vertical column for line wrap

  set list " We do this to show tabs
  set lcs=tab:»_,trail:·

  set relativenumber " Show relative line numbers
  set number " Show current line number

  set ruler " Show column number

  " set textwidth=100 " Set text wrap to 100
  " set wrap linebreak nolist " Softwrap long lines

  set laststatus=2
  let g:airline_powerline_fonts = 1
  let g:airline_theme='minimalist'
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
  nnoremap <silent> <LEADER>1 :tabn 1<CR>
  nnoremap <silent> <LEADER>2 :tabn 2<CR>
  nnoremap <silent> <LEADER>3 :tabn 3<CR>
  nnoremap <silent> <LEADER>4 :tabn 4<CR>
  nnoremap <silent> <LEADER>5 :tabn 5<CR>
  nnoremap <silent> <LEADER>6 :tabn 6<CR>
  nnoremap <silent> <LEADER>7 :tabn 7<CR>
  nnoremap <silent> <LEADER>8 :tabn 8<CR>
  nnoremap <silent> <LEADER>9 :tabn 9<CR>

  " Use SPACE to navigate splits.
  " http://vim.wikia.com/wiki/Switch_between_Vim_window_splits_easily
  nnoremap <silent> <LEADER>k :wincmd k<CR>
  nnoremap <silent> <LEADER>j :wincmd j<CR>
  nnoremap <silent> <LEADER>h :wincmd h<CR>
  nnoremap <silent> <LEADER>l :wincmd l<CR>
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
  set wildignore+=*.bin,*.so,*.o,*.osx,*.swp,*.zip,binary_files/,*vendor/*,*tmp/*,*node_modules/*,*DerivedData/*,*bower_components/*,*android/app/build/*
" }

" Vim Markdown {
  let g:vim_markdown_folding_disabled=1
" }

" Tabular {
  nmap <Leader>t= :Tabularize /=<CR>
  vmap <Leader>t= :Tabularize /=<CR>
  " Prevent double space after colon
  nmap <Leader>t: :Tabularize /:\zs/l0r1<CR>
  vmap <Leader>t: :Tabularize /:\zs/l0r1<CR>
" }

" Startify {
  let g:startify_custom_header = [
    \ "    --------------------------------------------------------------------------------",
    \ "    *                                                                              *",
    \ "    *                                                                              *",
    \ "    *                        DO YOUR WORK. DON'T BE STUPID.                        *",
    \ "    *                                                                              *",
    \ "    *                                                                              *",
    \ "    --------------------------------------------------------------------------------",
  \ ]
" }

" Ale {

" }

" " Syntastic {
  " Toggle Syntastic
  " nmap <Leader>stm :SyntasticToggleMode<CR>
  " set statusline+=%#warningmsg#
  " set statusline+=%{SyntasticStatuslineFlag()}
  " set statusline+=%*

  " let g:syntastic_always_populate_loc_list = 1
  " let g:syntastic_auto_loc_list = 1
  " let g:syntastic_check_on_open = 0
  " let g:syntastic_check_on_wq = 0
  " let g:syntastic_ruby_checkers = ['rubocop']
  " let g:syntastic_ruby_rubocop_exec = '/Users/jnhuynh/.rbenv/shims/rubocop'
  " let g:syntastic_javascript_checkers = ['eslint']
  " " let g:syntastic_javascript_checkers = ['jshint']
" " }

" Javascript Libraries Syntax {
  let g:used_javascript_libs = 'jquery,underscore,react'
" }

" Vim Rspec {
  " let g:rspec_command="Dispatch bundle exec rspec {spec}"
  " map <Leader>fs :call RunCurrentSpecFile()<CR>
  " map <Leader>ns :call RunNearestSpec()<CR>
  " map <Leader>ls :call RunLastSpec()<CR>
  " map <Leader>as :call RunAllSpecs()<CR>
" }

" Vim Bookmarks {
highlight BookmarkSign ctermbg=NONE ctermfg=0
highlight BookmarkLine ctermbg=254 ctermFg=NONE
highlight SignColumn ctermbg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
nmap <Leader>mm <Plug>BookmarkToggle
nmap <Leader>mi <Plug>BookmarkAnnotate
nmap <Leader>ma <Plug>BookmarkShowAll
nmap <Leader>mn <Plug>BookmarkNext
nmap <Leader>mp <Plug>BookmarkPrev
nmap <Leader>mc <Plug>BookmarkClear
nmap <Leader>mx <Plug>BookmarkClearAll
" }
