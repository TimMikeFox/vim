execute pathogen#infect()
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

set formatprg=par

set number

set path+=src/**

set tags+=.ctags.tags

let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
        \ 2: ['.hg', 'hg --cwd %s locate -I .'],
        \ },
    \ 'fallback': 'find -L %s -type f | egrep -v ".class\$|.html\$"'
\ }
