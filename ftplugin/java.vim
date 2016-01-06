function! MakeGetSet()
    let getset=[]
    for line in getline(0, line('$'))
        let pattern='\v\s*private\s+(\w+)\s+(\w+).*;'
        if line =~? pattern
            call add(getset, substitute(line, pattern, 'public \1 get\u\2() {\rreturn \2;\r}',''))
            call add(getset, substitute(line, pattern, 'public void set\u\2(\1 \2) {\rthis.\2 = \2;\r}',''))
        endif
    endfor
    for entry in getset
        execute 'normal o'.entry
    endfor
endfunction
