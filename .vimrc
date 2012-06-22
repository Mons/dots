syntax enable 
set number 
set ruler 
set term=xterm 
colorscheme darkblue 
set autoindent 
set mouse=a 
set title 
set hlsearch
set ai
set sw=4
set ts=4
set smarttab
set bs=indent,eol,start
set laststatus=2

 nmap <F2> <ESC>:w<CR> 
 nmap <F11> <ESC>:set pastetoggle<CR>
 nmap <F1> <ESC>:set et!<CR>:set et?<CR>
" imap <F2> <ESC>:w<CR>i<Right> 
map <C-t> :tabnew<CR>
map <C-s> :sp<CR>

" map <C-w> :set nowrap!<CR>

map <Tab> >>
map <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

if has("autocmd") 

    " When editing a file, always jump to the last known cursor position. 
    " Don't do it when the position is invalid or when inside an event handler 
    " (happens when dropping a file on gvim). 
    autocmd BufReadPost * 
    \ if line("'\"") > 0 && line("'\"") <= line("$") | 
    \   exe "normal g`\"" | 
    \ endif 

endif " has("autocmd")

set titlestring=%t
set titleold=bash

if &term == "screen"
	set t_ts=k
	set t_fs=\
endif

if &term == "screen" || &term == "xterm"
	set title
endif

let g:proj_flags='imstTg'
let g:SuperTabRetainCompletionType=2

map gc :TlistOpen<cr>
let Tlist_Close_On_Select=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Inc_Winwidth=1
let Tlist_Use_SingleClick=1
let Tlist_Use_Right_Window=1

