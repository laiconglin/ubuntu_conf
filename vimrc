" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" map sort function to a key
vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" mkdir -p ~/.vim/bundle
" git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
"" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"" au InsertLeave * match ExtraWhitespace /\s\+$/

" Q: Cannot load colorscheme when reloading .vimrc.                                   
" https://github.com/Shougo/neobundle.vim/issues/157                                  
" A: You must write :NeoBundle lines before filetype plugin indent on and syntax  
" enable. 
" vim php manul
" https://github.com/thinca/vim-ref.git
" sudo port install lynx
" lynx is necessary
set nocompatible               " Be iMproved
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))
" NeoBundle 'vim-ref'


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod


" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on


" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


set nocompatible
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set cindent
set ruler
set showcmd
set hlsearch
set incsearch
syntax on
filetype plugin indent on
set viminfo='20,\"50
set history=700
" Only do this part when compiled with support for autocommands
if has("autocmd")
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif
" set bg=dark
set nu
imap <c-w> <Esc>
function! SET_PYTHON_IDENT()
    set shiftwidth=2
    set softtabstop=2
    set tabstop=2
    set backspace=2
    set smarttab
endfunction
"au FileType python,ruby :call SET_PYTHON_IDENT() 
au FileType ruby :call SET_PYTHON_IDENT() 
set nocompatible
set fileencodings=utf-8,gbk,gb2312
"added by check-c"
set nocompatible
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cindent
set ai
set smartindent
set smarttab
set ruler
set showcmd
set hlsearch
set incsearch
set expandtab
syntax on
filetype plugin indent on
set viminfo='20,\"50
set history=50
" Only do this part when compiled with support for autocommands
if has("autocmd")
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif
" set bg=dark
set nu
" imap <c-w> <Esc>

"------------------------------------------------------------------------------
""获取当前路径的上一级的路径
function! GET_UP_PATH(dir)
    let pos=len(a:dir)-1
    while pos>0
        if (a:dir[pos]=="/" )
            return  strpart(a:dir,0,pos)
        endif
        let pos=pos-1
    endwhile
    return  ""
endfunction

"设置相关tags
function! s:SET_TAGS()
    let dir = expand("%:p:h") "获得源文件路径
        "在路径上递归向上查找tags文件 
        while dir!=""
            if findfile("tags",dir) !=""
                "找到了就加入到tags
                 exec "set tags+=" . dir . "/tags"
             endif
            "得到上级路径
            let dir=GET_UP_PATH(dir)
        endwhile
    endfunction

autocmd BufEnter * call s:SET_TAGS()
"------------------------------------------------------------------------------

" add c++ stl tags
set tags+=~/.vim/cplusplustags
let OmniCpp_DefaultNamespaces=["std","_GLIBCXX_STD"]
set tags+=~/.vim/systags

"added by check-c end"

set gfn=Source\ Code\ Pro:h13
