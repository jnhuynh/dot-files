augroup markdown
 au! BufRead,BufNewFile *.mkd   setfiletype markdown
 au! BufRead,BufNewFile *.md   setfiletype markdown
augroup END

au! BufRead,BufNewFile *.haml   setfiletype haml
au! BufRead,BufNewFile *.coffee setfiletype javascript
