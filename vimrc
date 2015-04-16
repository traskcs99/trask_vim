
set number	     
set linebreak	     
set showbreak=+++
"set textwidth=100
set showmatch	
set errorbells
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch	
 
set autoindent
set expandtab	       
set shiftwidth=4
set smartindent	
set smarttab	
set softtabstop=4
 
set ruler	
 
set undolevels=1000
set backspace=indent,eol,start	

execute pathogen#infect()
au FileType javascript call JavaScriptFold()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
