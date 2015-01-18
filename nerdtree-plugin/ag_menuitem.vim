if exists("g:loaded_nerdtree_ag_menuitem")
    finish
endif
let g:loaded_nerdtree_ag_menuitem = 1

call NERDTreeAddMenuItem({
            \ 'text': '(g)rep directory',
            \ 'shortcut': 'g',
            \ 'callback': 'NERDTreeAg' })

function! NERDTreeAg()
    let dirnode = g:NERDTreeDirNode.GetSelected()

    let option_and_pattern = input("Enter (the option) and the search pattern: ")
    if option_and_pattern == ''
        echo 'Aborted'
        return
    endif

    let dirPath = dirnode.path.str()

    wincmd w
    
    let ag = "Ag"." --nocolor --nogroup ".option_and_pattern." ".dirPath
    silent exec ag
endfunction
