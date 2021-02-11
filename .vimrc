set nocompatible
filetype plugin on
syntax on


au BufNewFile */diary/*.wiki :silent 0r !~/generate-vimwiki-diary-template '%'

au BufReadPre ~/Documents/Personal/Wiki/Notes.wiki :silent 0r !cat ~/Documents/Personal/Wiki/Notes/* > ~/Documents/Personal/Wiki/Notes.wiki '%'

augroup autocom
    autocmd!
    "executes the command on quit
"     autocmd VimLeave *.wiki !git commit -a -m 'Autocommit'

    "execute the command on write
    autocmd BufWritePost,FileWritePost *.wiki !git add . && git commit -a -m 'Autocommit'
augroup END
